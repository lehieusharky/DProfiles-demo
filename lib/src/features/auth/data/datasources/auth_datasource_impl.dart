import 'package:demo_dprofiles/src/features/auth/data/datasources/auth_datasource.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/sign_in_model.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<BaseResponse> sendSignUpEmail(String email) async {
    try {
      final body = {"email": email};

      final response = await MyHttp.rl().sendSignUpEmail(body);

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> resendSignUpEmail(String email) async {
    try {
      final body = {"email": email};

      final response = await MyHttp.rl().resendSignUpEmail(body);

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> validateSignUpCode(String email, String code) async {
    try {
      final body = {"code": code, "email": email};

      final response = await MyHttp.rl().validateSignUpCode(body);

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> createAnAccount(CreateAccountModel model) async {
    try {
      final response = await MyHttp.rl().createAnAccount(model.toJson());

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<SignInModel> signIn(String email, String password) async {
    try {
      final body = {"username": email, "password": password};

      final response = await MyHttp.rl().signIn(body);

      _handleLocalDBWhenSignInSuccess(response);

      return response;
    } on DioException catch(e) {
      rethrow;
    }
  }

  void _handleLocalDBWhenSignInSuccess(SignInModel signInModel) async {
    await sharePreference.setAccessToken(signInModel.accessToken);

    await sharePreference.setRefreshToken(signInModel.refreshToken);
  }
}
