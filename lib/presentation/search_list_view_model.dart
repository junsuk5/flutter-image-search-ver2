import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search_app_ver2/core/error/network_error.dart';
import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/domain/connectivity/connectivity_observer.dart';
import 'package:image_search_app_ver2/domain/model/photo.dart';
import 'package:image_search_app_ver2/domain/use_case/get_photos_use_cases.dart';
import 'package:image_search_app_ver2/presentation/search_list_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchListViewModel extends ValueNotifier<SearchListState> {
  final GetOfflineFirstPhotosUseCases _getOfflineFirstPhotosUseCases;
  final ConnectivityObserver _connectivityObserver;

  final _eventController = StreamController<NetworkError>();

  Stream<NetworkError> get eventStream => _eventController.stream;

  Stream<Status> get networkConnectivityStream =>
      _connectivityObserver.observe();

  SearchListViewModel(
    this._getOfflineFirstPhotosUseCases,
    this._connectivityObserver,
  ) : super(const SearchListState());

  void onSearch(String query) async {
    value = value.copyWith(isLoading: true);

    final result = await _getOfflineFirstPhotosUseCases.execute(query);

    switch (result) {
      case Success<List<Photo>, NetworkError>():
        value = value.copyWith(
          isLoading: false,
          photos: result.data,
        );
      case Error<List<Photo>, NetworkError>():
        value = value.copyWith(
          isLoading: false,
          photos: [],
        );
        _eventController.add(result.e);
    }
  }
}

// 리버팟 왜 쓰는겨 도대체? 위에꺼랑 뭐가 다른거여.
// class SearchListViewModel extends Notifier<SearchListState> {
//   @override
//   SearchListState build() => const SearchListState();
//
//   void onSearch(String query) async {
//     state = state.copyWith(isLoading: true);
//
//     final useCase = getIt<GetOfflineFirstPhotosUseCases>();
//     final result = await useCase.execute(query);
//
//     switch (result) {
//       case Success<List<Photo>, NetworkError>():
//         state = state.copyWith(
//           isLoading: false,
//           photos: result.data,
//         );
//       case Error<List<Photo>, NetworkError>():
//         state = state.copyWith(isLoading: false);
//     }
//   }
// }
//
// final searchListViewModel =
//     NotifierProvider<SearchListViewModel, SearchListState>(
//         SearchListViewModel.new);
