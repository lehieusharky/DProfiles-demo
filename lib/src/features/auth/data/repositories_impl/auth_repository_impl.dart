import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/datasources/auth_datasource.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/sign_in_model.dart';
import 'package:demo_dprofiles/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<Either<AuthFailure, BaseResponse>> sendSignUpEmail(
      String email) async {
    try {
      final response = await _authDataSource.sendSignUpEmail(email);
      return Right(response);
    } on DioException catch (e) {
      return Left(AuthFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<AuthFailure, BaseResponse>> resendSignUpEmail(
      String email) async {
    try {
      final response = await _authDataSource.sendSignUpEmail(email);
      return Right(response);
    } on DioException catch (e) {
      return Left(AuthFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<AuthFailure, BaseResponse>> validateSignUpCode(
      String email, String code) async {
    try {
      final response = await _authDataSource.validateSignUpCode(email, code);
      return Right(response);
    } on DioException catch (e) {
      return Left(AuthFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<AuthFailure, BaseResponse>> createAnAccount(
      CreateAccountModel model) async {
    try {
      final response = await _authDataSource.createAnAccount(model);
      return Right(response);
    } on DioException catch (e) {
      return Left(AuthFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<AuthFailure, SignInModel>> signIn(
      String email, String password) async {
    try {
      final response = await _authDataSource.signIn(email, password);
      return Right(response);
    } on DioException catch (e) {
      return Left(AuthFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
