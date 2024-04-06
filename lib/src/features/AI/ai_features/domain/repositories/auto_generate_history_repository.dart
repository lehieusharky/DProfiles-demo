import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class AutoGenerateRepository {
  Future<Either<AutoGenerateFailure, BaseResponse>> getAutoGenerateHistory();
}

class AutoGenerateFailure extends AppFailure {
  const AutoGenerateFailure({super.msgCode, super.response});
}
