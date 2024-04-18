part of 'focus_comment_cubit.dart';

@CopyWith()
class FocusCommentState extends SimpleState {
  final bool submitEnabled;
  final FeedCommentModel? comment;
  static const initial = FocusCommentState(submitEnabled: false);
  const FocusCommentState({
    SimpleStateStatus status = SimpleStateStatus.initial,
    this.comment,
    this.submitEnabled = false,
  }) : super(status: status);
}
