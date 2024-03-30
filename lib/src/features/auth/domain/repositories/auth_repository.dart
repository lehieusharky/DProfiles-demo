import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/sign_in_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, BaseResponse>> sendSignUpEmail(String email);

  Future<Either<AuthFailure, BaseResponse>> resendSignUpEmail(String email);

  Future<Either<AuthFailure, BaseResponse>> validateSignUpCode(
      String email, String code);

  Future<Either<AuthFailure, BaseResponse>> createAnAccount(
      CreateAccountModel model);

  Future<Either<AuthFailure, SignInModel>> signIn(
      String email, String password);
}

class AuthFailure extends AppFailure {
  const AuthFailure({super.msgCode, super.response});
}
