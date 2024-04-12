import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class ForgotPasswordDataSource {
  Future<BaseResponse> requestResetPassword(String email);
  Future<BaseResponse> resetPassword(String token, String newPassword);
}
