import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/utils/https/failures/my_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, BaseResponse>> sendSignUpEmail(String email);

  Future<Either<AuthFailure, BaseResponse>> resendSignUpEmail(String email);

  Future<Either<AuthFailure, BaseResponse>> validateSignUpCode(String email, String code);

  Future<Either<AuthFailure, BaseResponse>> createAnAccount(CreateAccountModel model);
}

class AuthFailure extends MyFailure {
  AuthFailure(super.e);

}
