import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/features/feed/data/models/feed_comment_model.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/cubit/focus_comment_cubit.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:demo_dprofiles/src/utils/extensions/datetime_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentItem extends StatelessWidget {
  const CommentItem(this.data, {super.key});
  final FeedCommentModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${data.user?.username}',
                    style: AppFont().fontTheme(context).bodyLarge,
                  ),
                  Text(
                    data.createdTs.convertToAgoFormat(),
                    style: AppFont()
                        .fontTheme(context, color: MyColor.grayB1B5C3)
                        .bodySmall,
                  ),
                  Text(
                    data.content,
                    style: AppFont().fontTheme(context).bodyMedium,
                  ),
                  SizedBox(height: context.sizeHeight(12)),
                  _buildReply(context),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildReply(BuildContext context) {
    return BlocBuilder<FocusCommentCubit, FocusCommentState>(
      builder: (context, state) {
        final bloc = context.read<FocusCommentCubit>();
        return InkWell(
          onTap: () {
            bloc.focus(data);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Reply",
                style: AppFont()
                    .fontTheme(context, color: MyColor.grayB1B5C3)
                    .bodyMedium,
              ),
              const MyDivider(verticalMargin: 0, thickness: 1),
            ],
          ),
        );
      },
    );
  }
}
