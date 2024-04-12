part of 'forgot_password_cubit.dart';

@CopyWith()
class ForgotPasswordState extends SimpleState {
  final bool submitEnabled;
  static const initial = ForgotPasswordState(submitEnabled: false);
  const ForgotPasswordState({
    SimpleStateStatus status = SimpleStateStatus.initial,
    this.submitEnabled = false,
  }) : super(status: status);
}
