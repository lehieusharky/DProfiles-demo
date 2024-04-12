part of 'update_new_password_cubit.dart';

@CopyWith()
class UpdateNewPasswordState extends SimpleState {
  final bool submitEnabled;
  static const initial = UpdateNewPasswordState(submitEnabled: false);
  const UpdateNewPasswordState({
    SimpleStateStatus status = SimpleStateStatus.initial,
    this.submitEnabled = false,
  }) : super(status: status);
}
