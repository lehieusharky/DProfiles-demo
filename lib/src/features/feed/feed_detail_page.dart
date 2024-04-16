import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/feed/comment_bar.dart';
import 'package:demo_dprofiles/src/features/feed/feed_comments.dart';
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/features/home/domain/entities/ext_new_feed_entity.dart';
import 'package:flutter/material.dart';

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
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [feed.toWidget(context)],
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
    );
  }

  Widget _buildCommentBar() {
    return const CommentBar();
  }
}
