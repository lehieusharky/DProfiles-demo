part of 'blog_bloc.dart';

@freezed
class BlogState with _$BlogState {
  const factory BlogState.initial() = BlogInitial;
  const factory BlogState.loading() = BlogLoading;
  const factory BlogState.loaded(List<BlogModel> blogs) = BlogLoaded;
  const factory BlogState.error(String message) = BlogError;
}
