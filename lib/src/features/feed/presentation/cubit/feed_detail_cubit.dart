import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/feed/domain/repositories/feed_repository.dart';
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/features/home/presentation/bloc/home_bloc.dart';

part 'feed_detail_cubit.g.dart';
part 'feed_detail_state.dart';

class FeedDetailCubit extends Cubit<FeedDetailState> {
  FeedDetailCubit(NewFeedModel feed) : super(FeedDetailState(feed));

  final feedRepository = injector.get<FeedRepository>();

  // Like and increase the number of likes
  // void like() {
  //   if (state.feed.liked == true) {
  //     final newFeed = state.feed.copyWith(
  //         liked: !state.feed.liked,
  //         noOfLike: state.feed.noOfLike! + (state.feed.liked ? -1 : 1));
  //     injector.get<HomeBloc>().add(UpdateFeedEvent(newFeed));
  //     emit(FeedDetailState(newFeed));
  //     return;
  //   }
  //   final newFeed = state.feed.copyWith(
  //     liked: !state.feed.liked,
  //     noOfLike: state.feed.noOfLike! + (state.feed.liked! ? -1 : 1),
  //   );
  //   feedRepository.createLike({
  //     'post_id': newFeed.postId,
  //     'type': 0,
  //     'status': 1,
  //   });
  //   injector.get<HomeBloc>().add(UpdateFeedEvent(newFeed));
  //   emit(FeedDetailState(newFeed));
  // }

  void refetch() async {
    final res = await feedRepository.readPost(state.feed.id ?? 0);
    res.fold(
      (l) {},
      (r) {
        final feedUpdated = NewFeedModel.fromJson(r.data);
        injector.get<HomeBloc>().add(UpdateFeedEvent(feedUpdated));
        emit(state.copyWith(feed: feedUpdated));
      },
    );
  }
}
