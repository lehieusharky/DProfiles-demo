import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class PublicProfileRepository {
  Future<Either<PublicFailure, BaseResponse>> getPublicBasicInfo(
      String userName);

  Future<Either<PublicFailure, BaseResponse>> getEducations(String userName);

  Future<Either<PublicFailure, BaseResponse>> getExperiences(String userName);

  Future<Either<PublicFailure, BaseResponse>> getCertificates(String userName);

  Future<Either<PublicFailure, BaseResponse>> getPublicLanguages(
      String userName);

  Future<Either<PublicFailure, BaseResponse>> getPublicSkills(String userName);

  Future<Either<PublicFailure, BaseResponse>> getPublicBanner(String userName);
}

class PublicFailure extends AppFailure {
  const PublicFailure({super.msgCode, super.response});
}
