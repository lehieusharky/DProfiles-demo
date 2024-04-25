part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = _Started;

  const factory SearchEvent.searchBar({
    String? keyWord,
    required int page,
    int? limit,
  }) = SearchBarDoRequest;
}
