import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_holder_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/feed/data/models/feed_comment_model.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/bloc/feed_comment_bloc.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/comment_item.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:shimmer/shimmer.dart';

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
        // if (state == null) {
        //   return  const _CommentShimmerList();
        // }
        // return _buildBody(context, state);
        return Padding(
          padding:  context.padding(all: 20),
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
              state == null ? _buildListCommentShimmer(4) : _buildBody(context, state) ,
              SizedBox(height: context.sizeHeight(32)),
            ],
          ),
        );
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
    return  Expanded(
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

  Widget _buildCommentShimmer(BuildContext context,){
    return  Row(
      children:  [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: const MyShimmer(width: 35, height: 35, radius: 35, period: Duration(milliseconds: 2000),),
        ),
        const MyShimmer(width: 140, height: 50, radius: 18, period: Duration(milliseconds: 2000),),

      ],
    );
  }

  Widget _buildListCommentShimmer(int count){
    return Expanded(
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return _buildCommentShimmer(context);
          },
          shrinkWrap: true,
          separatorBuilder: (context, index){
            return const SizedBox(height: 25,);
          },
          itemCount: count),
    );
  }
}

