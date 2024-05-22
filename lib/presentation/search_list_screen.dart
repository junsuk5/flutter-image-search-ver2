import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search_app_ver2/core/error/network_error.dart';
import 'package:image_search_app_ver2/presentation/search_list_state.dart';
import 'package:image_search_app_ver2/presentation/search_list_view_model.dart';

import '../domain/connectivity/connectivity_observer.dart';
import 'components/image_card_widget.dart';

class SearchListRoot extends StatefulWidget {
  final SearchListViewModel viewModel;

  const SearchListRoot({super.key, required this.viewModel});

  @override
  State<SearchListRoot> createState() => _SearchListRootState();
}

class _SearchListRootState extends State<SearchListRoot> {
  StreamSubscription<NetworkError>? eventSubscription;
  StreamSubscription<Status>? networkConnectivitySubscription;

  @override
  void initState() {
    super.initState();

    eventSubscription = widget.viewModel.eventStream.listen((event) {
      final String message;
      switch (event) {
        case NetworkError.connectionTimeout:
          message = '타임아웃';
        case NetworkError.badResponse:
          message = '잘못된 응답';
        case NetworkError.connectionError:
          message = '네트워크 연결상태 이상';
        case NetworkError.unknown:
          message = '알 수 없는 에러';
      }

      final snackBar = SnackBar(content: Text(message));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });

    networkConnectivitySubscription =
        widget.viewModel.networkConnectivityStream.listen((event) {
      final String message = switch (event) {
        Status.available => '네트워크 연결됨',
        Status.unavailable => '네트워크 끊어짐',
      };

      final snackBar = SnackBar(content: Text(message));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<SearchListState>(
      valueListenable: widget.viewModel,
      builder: (BuildContext context, SearchListState state, Widget? child) {
        return SearchListScreen(
          state: state,
          onSearch: widget.viewModel.onSearch,
        );
      },
    );
  }

  @override
  void dispose() {
    eventSubscription?.cancel();
    super.dispose();
  }
}

class SearchListScreen extends StatefulWidget {
  final SearchListState state;
  final Function(String query) onSearch;

  const SearchListScreen({
    super.key,
    required this.state,
    required this.onSearch,
  });

  @override
  State<SearchListScreen> createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색 앱 final'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _queryTextEditingController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: '검색어',
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  final query = _queryTextEditingController.text;
                  widget.onSearch(query);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: widget.state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : GridView.builder(
                      itemCount: widget.state.photos.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        maxCrossAxisExtent: 200,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final photo = widget.state.photos[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Hero(
                            tag: photo.id,
                            child: ImageCardWidget(photo: photo),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
