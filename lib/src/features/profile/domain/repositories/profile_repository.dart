import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class ProfileRepository {
  Future<Either<ProfileFailure, BaseResponse>> getUserInfo();

  Future<Either<ProfileFailure, BaseResponse>> getUserCertificates();

  Future<Either<ProfileFailure, BaseResponse>> getUserEducations();

  Future<Either<ProfileFailure, BaseResponse>> getUserExperiences();
}

class ProfileFailure extends AppFailure {
  const ProfileFailure({super.msgCode, super.response});
}
