import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/comment_item.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedComments extends StatelessWidget {
  const FeedComments({super.key});

  @override
  Widget build(BuildContext context) {
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
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: _itemBuilder,
              itemCount: 10,
            ),
          ),
          SizedBox(height: context.sizeHeight(32)),
        ],
      ),
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) {
    return const SizedBox(height: 10);
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return CommentItem();
  }
}
