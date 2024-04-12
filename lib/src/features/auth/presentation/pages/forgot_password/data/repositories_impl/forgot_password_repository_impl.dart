import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/data/datasources/forgot_datasources.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/domain/repositories/forgot_password_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ForgotPasswordRepository)
class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {
  final ForgotPasswordDataSource _dataSource;
  ForgotPasswordRepositoryImpl(this._dataSource);

  @override
  Future<Either<String, BaseResponse>> requestForgotPassword(
      String email) async {
    try {
      final res = await _dataSource.requestResetPassword(email);

      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> resetPassword(
      String token, String newPassword) async {
    try {
      final res = await _dataSource.resetPassword(token, newPassword);

      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }
}
