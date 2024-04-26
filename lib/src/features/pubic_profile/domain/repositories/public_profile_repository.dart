import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class PublicProfileRepository {
  Future<Either<PublicFailure, BaseResponse>> getPublicBasicInfo(
      String userName);
}

class PublicFailure extends AppFailure {
  const PublicFailure({super.msgCode, super.response});
}
