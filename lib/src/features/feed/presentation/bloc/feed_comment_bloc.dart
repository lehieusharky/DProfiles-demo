import 'package:bloc/bloc.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/feed/data/models/feed_comment_model.dart';
import 'package:demo_dprofiles/src/features/feed/domain/repositories/feed_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_comment_bloc.freezed.dart';
part 'feed_comment_event.dart';
part 'feed_comment_state.dart';

class FeedCommentBloc extends Bloc<FeedCommentEvent, FeedCommentState> {
  final int postId;
  FeedCommentBloc(this.postId) : super(const FeedCommentState.initial()) {
    on<FeedCommentFetchEvent>((event, emit) async {
      // TODO: Refactor to pagingation
      final res = await repository.readAllCommentsByPost(postId, 1, 200);
      res.fold(
          (l) => emit(const FeedCommentState.failed('Error fetching comments')),
          (r) => emit(
                FeedCommentState.loaded(_parseComments(r.data)),
              ));
    });
  }

  // Parse list of comments
  List<FeedCommentModel> _parseComments(dynamic data) {
    try {
      return (data as List).map((e) => FeedCommentModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }

  final repository = injector.get<FeedRepository>();
}
