import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_search_app_ver2/presentation/search_list_state.dart';
import 'package:image_search_app_ver2/presentation/search_list_view_model.dart';

import 'components/image_card_widget.dart';

class SearchListRoot extends ConsumerWidget {
  const SearchListRoot({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final viewModel = ref.watch(searchListViewModel.notifier);
    final state = ref.watch(searchListViewModel);

    return SearchListScreen(
      state: state,
      onSearch: viewModel.onSearch,
    );
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
                  : GridView.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: widget.state.photos
                          .map(
                            (photo) => GestureDetector(
                              onTap: () {},
                              child: Hero(
                                tag: photo.id,
                                child: ImageCardWidget(photo: photo),
                              ),
                            ),
                          )
                          .toList(),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
