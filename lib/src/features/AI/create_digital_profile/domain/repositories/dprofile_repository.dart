import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class DProfileRepository {
  Future<Either<DProfileFailure, BaseResponse>> getDProfileUpdateHistory();
}

class DProfileFailure extends AppFailure {
  const DProfileFailure({super.msgCode, super.response});
}
