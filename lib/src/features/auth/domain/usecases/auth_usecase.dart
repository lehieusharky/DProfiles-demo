import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/sign_in_model.dart';
import 'package:demo_dprofiles/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

AuthUseCase get authUseCase => injector.get<AuthUseCase>();

abstract class AuthUseCase {
  Future<Either<String, BaseResponse>> sendSignUpEmail(String email);

  Future<Either<String, BaseResponse>> resendSignUpEmail(String email);

  Future<Either<String, BaseResponse>> validateSignUpCode(
      String email, String code);

  Future<Either<String, BaseResponse>> createAnAccount(
      CreateAccountModel model);

  Future<Either<String, SignInModel>> signIn(String email, String password);
}

@Injectable(as: AuthUseCase)
class AuthUseCaseImpl implements AuthUseCase {
  final AuthRepository _authRepository;

  AuthUseCaseImpl(this._authRepository);

  @override
  Future<Either<String, BaseResponse>> sendSignUpEmail(String email) async {
    final result = await _authRepository.sendSignUpEmail(email);

    return result.fold(
      (l) => Left((l.response as AuthErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> resendSignUpEmail(String email) async {
    final result = await _authRepository.sendSignUpEmail(email);

    return result.fold(
      (l) => Left((l.response as AuthErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> validateSignUpCode(
      String email, String code) async {
    final result = await _authRepository.validateSignUpCode(email, code);

    return result.fold(
      (l) => Left((l.response as AuthErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> createAnAccount(
      CreateAccountModel model) async {
    final result = await _authRepository.createAnAccount(model);

    return result.fold(
      (l) => Left((l.response as AuthErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, SignInModel>> signIn(
      String email, String password) async {
    final result = await _authRepository.signIn(email, password);

    return result.fold(
      (l) => Left((l.response as AuthErrorResponse).message!),
      (r) => Right(r),
    );
  }
}
