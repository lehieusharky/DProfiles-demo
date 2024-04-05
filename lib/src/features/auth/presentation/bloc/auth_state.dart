part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.error(
      {required String message, required String title}) = AuthError;
  const factory AuthState.sendSignUpEmailSuccess(String email) =
      AuthSendSignUpEmailSuccess;
  const factory AuthState.resendSignUpEmailSuccess() =
      AuthResendSignUpEmailSuccess;
  const factory AuthState.validateSignUpCodeSuccess() =
      AuthValidateSignUpCodeSuccess;

  const factory AuthState.validateSignUpCodeFailed(String message) =
      AuthValidateSignUpCodeFailed;

  const factory AuthState.createAnAccountSuccess() = AuthCreateAnAccountSuccess;

  const factory AuthState.signInSuccess() = AuthSignInSuccess;
}
