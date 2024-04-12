import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/data/datasources/forgot_datasources.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ForgotPasswordDataSource)
class ForgotPasswordDataSourceIml implements ForgotPasswordDataSource {
  @override
  Future<BaseResponse> requestResetPassword(String email) async {
    try {
      final baseResponse = await MyHttp.rl().requestResetPassword({
        'email': email,
      });
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> resetPassword(String token, String newPassword) async {
    try {
      final baseResponse = await MyHttp.rl().resetPassword({
        'token': token,
        'newPassword': newPassword,
      });
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }
}
