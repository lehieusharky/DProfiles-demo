part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendSignUpEmail(String email) = AuthSendSignUpEmail;

  const factory AuthEvent.resendSignUpEmail(String email) =
      AuthResendSignUpEmail;

  const factory AuthEvent.validateSignUpCode(String email, String code) =
      AuthValidateSignUpCode;

  const factory AuthEvent.createAccount(CreateAccountModel model) =
      AuthCreateAccount;

  const factory AuthEvent.signIn(String email, String password) = AuthSignIn;
}
