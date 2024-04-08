part of 'blog_bloc.dart';

@freezed
class BlogEvent with _$BlogEvent {
  const factory BlogEvent.load() = _Load;
  const factory BlogEvent.loadMore() = _LoadMore;
  const factory BlogEvent.refresh() = _Refresh;
}
