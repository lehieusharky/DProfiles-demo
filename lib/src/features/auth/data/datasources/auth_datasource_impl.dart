import 'package:demo_dprofiles/src/features/auth/data/datasources/auth_datasource.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<BaseResponse> sendSignUpEmail(String email) async {
    final body = {"email": email};

    final response = await MyHttp.rl().sendSignUpEmail(body).catchError(
          (e) => BaseResponse.fromJson((e as DioException).response!.data),
        );

    return response;
  }

  @override
  Future<BaseResponse> resendSignUpEmail(String email) async {
    final body = {"email": email};

    final response = await MyHttp.rl().resendSignUpEmail(body).catchError(
        (e) => BaseResponse.fromJson((e as DioException).response!.data));

    return response;
  }

  @override
  Future<BaseResponse> validateSignUpCode(String email, String code) async {
    final body = {"code": code, "email": email};

    final response = await MyHttp.rl().validateSignUpCode(body).catchError(
        (e) => BaseResponse.fromJson((e as DioException).response!.data));

    return response;
  }

  @override
  Future<BaseResponse> createAnAccount(CreateAccountModel model) async {
    final response = await MyHttp.rl()
        .createAnAccount(model.toJson())
        .catchError(
            (e) => BaseResponse.fromJson((e as DioException).response!.data));

    return response;
  }
}
