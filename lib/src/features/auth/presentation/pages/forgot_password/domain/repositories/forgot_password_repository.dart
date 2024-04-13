import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class ForgotPasswordRepository {
  Future<Either<String, BaseResponse>> requestForgotPassword(String email);
  Future<Either<String, BaseResponse>> resetPassword(
    String token,
    String newPassword,
  );
}
