import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_search_app_ver2/core/error/network_error.dart';
import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/di/di_setup.dart';
import 'package:image_search_app_ver2/domain/model/photo.dart';
import 'package:image_search_app_ver2/domain/use_case/get_photos_use_cases.dart';
import 'package:image_search_app_ver2/presentation/search_list_state.dart';

class SearchListViewModel extends Notifier<SearchListState> {
  @override
  SearchListState build() => const SearchListState();

  void onSearch(String query) async {
    state = state.copyWith(isLoading: true);

    final useCase = getIt<GetPhotosUseCases>();
    final result = await useCase.execute(query);

    switch (result) {
      case Success<List<Photo>, NetworkError>():
        state = state.copyWith(
          isLoading: false,
          photos: result.data,
        );
      case Error<List<Photo>, NetworkError>():
        state = state.copyWith(isLoading: false);
    }
  }
}

final searchListViewModel =
    NotifierProvider<SearchListViewModel, SearchListState>(
        SearchListViewModel.new);
