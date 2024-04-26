part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.loading() = SearchLoading;

  const factory SearchState.error(
      {required String title, required String msg}) = SearchError;

  const factory SearchState.searchBarSuccess(
      List<SearchBarResultModel> result) = SearchBarDoRequestSuccess;
}
