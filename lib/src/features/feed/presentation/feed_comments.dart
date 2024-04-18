import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/feed/data/models/feed_comment_model.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/bloc/feed_comment_bloc.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/comment_item.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedComments extends StatelessWidget {
  const FeedComments({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FeedCommentBloc, FeedCommentState,
        List<FeedCommentModel>?>(
      selector: (state) {
        if (state is FeedCommentLoaded) {
          return state.comments;
        }

        return null;
      },
      builder: (context, state) {
        if (state == null) {
          return const MyShimmer(count: 4, height: 200);
        }

        return _buildBody(context, state);
      },
    );
  }

  Widget _buildBody(BuildContext context, List<FeedCommentModel> state) {
    if (state.isEmpty) {
      return Center(
        child: Text(
          'No comments yet',
          style: AppFont().fontTheme(context).bodyLarge,
        ),
      );
    }
    return Padding(
      padding: context.padding(all: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Comments',
            style: AppFont()
                .fontTheme(context, weight: FontWeight.w600)
                .headlineMedium,
          ),
          SizedBox(height: context.sizeHeight(16)),
          Expanded(
            child: ListView.separated(
              separatorBuilder: _separatorBuilder,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => _itemBuilder(
                context,
                index,
                state[index],
              ),
              itemCount: state.length,
            ),
          ),
          SizedBox(height: context.sizeHeight(32)),
        ],
      ),
    );
  }

  Widget _separatorBuilder(
    BuildContext context,
    int index,
  ) {
    return const SizedBox(height: 10);
  }

  Widget _itemBuilder(
    BuildContext context,
    int index,
    FeedCommentModel item,
  ) {
    return CommentItem(item);
  }
}
