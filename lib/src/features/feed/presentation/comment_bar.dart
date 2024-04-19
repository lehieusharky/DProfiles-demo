import 'package:demo_dprofiles/src/core/common/simple_status/simple_state_status.dart';
import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/bloc/feed_comment_bloc.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/cubit/feed_detail_cubit.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/cubit/focus_comment_cubit.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentBar extends StatelessWidget {
  const CommentBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FocusCommentCubit, FocusCommentState>(
      listener: (context, state) {
        switch (state.status) {
          case SimpleStateStatus.success:
            context.read<FeedCommentBloc>().add(const FeedCommentEvent.fetch());
            context.read<FeedDetailCubit>().refetch();
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        final bloc = context.read<FocusCommentCubit>();
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: MyTextFormField(
                  focusNode: bloc.focusNode,
                  controller: bloc.commentTextController,
                  hintText: 'Write a comment...',
                ),
              ),
              _buildSubmitButton(context, state),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context, FocusCommentState state) {
    final bloc = context.read<FocusCommentCubit>();
    return IconButton(
      padding: EdgeInsets.zero,
      color: MyColor.green58BD7D,
      onPressed: state.submitEnabled
          ? () {
              bloc.sendComment();
            }
          : null,
      icon: const Icon(
        Icons.send,
      ),
    );
  }
}
