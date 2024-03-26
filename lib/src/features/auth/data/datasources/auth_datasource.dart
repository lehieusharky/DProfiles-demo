import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class AuthDataSource {
  Future<BaseResponse> sendSignUpEmail(String email);

  Future<BaseResponse> resendSignUpEmail(String email);

  Future<BaseResponse> validateSignUpCode(String email, String code);

  Future<BaseResponse> createAnAccount(CreateAccountModel model);
}
