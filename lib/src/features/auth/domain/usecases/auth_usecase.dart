import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:injectable/injectable.dart';

AuthUseCase get authUseCase => injector.get<AuthUseCase>();

abstract class AuthUseCase {}

@Injectable(as: AuthUseCase)
class AuthUseCaseImpl implements AuthUseCase {


}
