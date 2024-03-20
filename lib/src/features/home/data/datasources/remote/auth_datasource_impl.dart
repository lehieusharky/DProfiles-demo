import 'package:injectable/injectable.dart';

import 'auth_datasource.dart';

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  @override
  void sayHello() {}
}
