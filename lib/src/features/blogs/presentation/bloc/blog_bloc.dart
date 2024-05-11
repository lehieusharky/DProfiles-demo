import 'package:bloc/bloc.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:demo_dprofiles/src/features/blogs/domain/usecases/fetch_all_blogs_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

part 'blog_bloc.freezed.dart';
part 'blog_event.dart';
part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  BlogBloc() : super(const BlogState.initial()) {
    on<_Load>((event, emit) async {
      emit(const BlogState.loading());
      final result = await fetchAllBlogsUseCase.execute(++page);
      result.fold(
        (l) => emit(const BlogState.error('Error fetching blogs')),
        (r) => emit(BlogState.loaded(r)),
      );
    });
    on<_LoadMore>((event, emit) async {
      refreshController.requestLoading();
      final List<BlogModel> currentBlogs =
          state is BlogLoaded ? (state as BlogLoaded).blogs : [];
      final result = await fetchAllBlogsUseCase.execute(++page);
      result.fold((l) => refreshController.loadFailed(), (r) {
        refreshController.loadComplete();
        emit(BlogState.loaded(currentBlogs + r));
      });
    });
    on<_Refresh>((event, emit) async {
      refreshController.requestRefresh();
      page = 0;
      final result = await fetchAllBlogsUseCase.execute(++page);
      result.fold(
        (l) => refreshController.refreshFailed(),
        (r) {
          refreshController.refreshCompleted();
          emit(BlogState.loaded(r));
        },
      );
    });
  }

  // Page number starts from 1
  int page = 0;
  final refreshController = RefreshController();

}
