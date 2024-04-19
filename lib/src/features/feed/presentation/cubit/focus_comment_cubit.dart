import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:demo_dprofiles/src/core/common/simple_status/simple_state_status.dart';
import 'package:demo_dprofiles/src/core/common/simple_status/simple_status.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/feed/data/models/feed_comment_model.dart';
import 'package:demo_dprofiles/src/features/feed/domain/repositories/feed_repository.dart';
import 'package:flutter/material.dart';

part 'focus_comment_cubit.g.dart';
part 'focus_comment_state.dart';

class FocusCommentCubit extends Cubit<FocusCommentState> {
  final int postId;
  FocusCommentCubit(this.postId) : super(FocusCommentState.initial) {
    commentTextController.addListener(() {
      validateComment();
    });
  }
  final repository = injector.get<FeedRepository>();
  final commentTextController = TextEditingController();
  final focusNode = FocusNode();

  void validateComment() {
    emit(state.copyWith(submitEnabled: commentTextController.text.isNotEmpty));
  }

  void focus(FeedCommentModel? parent) {
    focusNode.requestFocus();
    commentTextController.clear();
    emit(state.copyWith(comment: parent));
  }

  void sendComment() {
    repository.createComment({
      'post_id': postId,
      'user_id': 0,
      'comment_id': state.comment?.id ?? 0,
      'content': commentTextController.text,
    }).then((result) {
      result.fold(
        (error) => emit(state.copyWith(status: SimpleStateStatus.failure)),
        (data) {
          emit(state.copyWith(status: SimpleStateStatus.success));
          commentTextController.clear();
        },
      );
    });
  }
}
