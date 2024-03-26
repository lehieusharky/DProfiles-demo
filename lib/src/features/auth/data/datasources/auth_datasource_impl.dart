import 'package:demo_dprofiles/src/features/auth/data/datasources/auth_datasource.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<BaseResponse> sendSignUpEmail() async {
    try {
      return const BaseResponse(
        message: 'message',
        error: 'error',
        statusCode: 201,
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
