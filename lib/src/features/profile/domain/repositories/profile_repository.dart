import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';

abstract class ProfileRepository {
  Future<Either<ProfileFailure, BaseResponse>> getUserInfo();

  Future<Either<ProfileFailure, BaseResponse>> getUserCertificates();

  Future<Either<ProfileFailure, BaseResponse>> getUserEducations();

  Future<Either<ProfileFailure, BaseResponse>> getUserExperiences();

  Future<Either<ProfileFailure, BaseResponse>> getUserSkills();

  Future<Either<ProfileFailure, BaseResponse>> getUserLanguage();

  Future<Either<ProfileFailure, UploadFileResponse?>> uploadImage();
}

class ProfileFailure extends AppFailure {
  const ProfileFailure({super.msgCode, super.response});
}
