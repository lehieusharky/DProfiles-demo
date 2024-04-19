import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/bloc/feed_comment_bloc.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/comment_bar.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/cubit/feed_detail_cubit.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/cubit/focus_comment_cubit.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/feed_comments.dart';
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/features/home/domain/entities/ext_new_feed_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FeedDetailPage extends StatelessWidget {
  final NewFeedModel feed;
  const FeedDetailPage({
    super.key,
    required this.feed,
  });

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      canBack: true,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => FeedCommentBloc(feed.postId ?? 0)
                ..add(const FeedCommentFetchEvent())),
          BlocProvider(
            create: (context) => FocusCommentCubit(feed.postId ?? 0),
          ),
          BlocProvider(
            create: (_) => FeedDetailCubit(feed),
          ),
        ],
        child: Stack(
          children: [
            NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      BlocBuilder<FeedDetailCubit, FeedDetailState>(
                          builder: (context, state) {
                        return feed.toWidget(context);
                      }),
                    ],
                  ),
                ),
              ],
              body: const FeedComments(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buildCommentBar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentBar() {
    return const CommentBar();
  }
}
