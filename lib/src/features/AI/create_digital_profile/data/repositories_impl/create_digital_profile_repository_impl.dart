import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/repositories/create_digital_profile_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CreateDigitalProfileRepository)
class CreateDigitalProfileRepositoryImpl
    implements CreateDigitalProfileRepository {
  final CreateDigitalProfileDataSource _createDigitalProfileDataSource;

  CreateDigitalProfileRepositoryImpl(this._createDigitalProfileDataSource);

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> updateUserInfo(
      UserInfoModel params) async {
    try {
      final res = await _createDigitalProfileDataSource.updateUserInfo(params);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      getUserInfo() async {
    try {
      final res = await _createDigitalProfileDataSource.getUserInfo();

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  // certificate

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> addUserCertificate(
      CertificateModel param) async {
    try {
      final res =
          await _createDigitalProfileDataSource.addUserCertificate(param);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      deleteUserCertificate(int id) async {
    try {
      final res =
          await _createDigitalProfileDataSource.deleteUserCertificate(id);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getCertificateInfo(
      String id) async {
    try {
      final res = await _createDigitalProfileDataSource.getCertificateInfo(id);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      getUserCertificates() async {
    try {
      final res = await _createDigitalProfileDataSource.getUserCertificates();

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      updateUserCertificate(String id, CertificateModel data) async {
    try {
      final res =
          await _createDigitalProfileDataSource.updateUserCertificate(id, data);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  // education

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> addUserEducation(
      EducationModel data) async {
    try {
      final model =
          await _createDigitalProfileDataSource.addUserEducation(data);
      return Right(model);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> deleteEducation(
      int id) async {
    try {
      final res = await _createDigitalProfileDataSource.deleteEducation(id);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getEducationInfo(
      String id) async {
    try {
      final res = await _createDigitalProfileDataSource.getEducationInfo(id);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      getUserEducations() async {
    try {
      final res = await _createDigitalProfileDataSource.getUserEducations();

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> updateEducationInfo(
      String id, EducationModel data) async {
    try {
      final res =
          await _createDigitalProfileDataSource.updateEducationInfo(id, data);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  // experience

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> addUserExperience(
      ExperienceModel data) async {
    try {
      final model =
          await _createDigitalProfileDataSource.addUserExperience(data);
      return Right(model);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> deleteExperience(
      int id) async {
    try {
      final res = await _createDigitalProfileDataSource.deleteExperience(id);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getExperienceInfo(
      String id) async {
    try {
      final res = await _createDigitalProfileDataSource.getExperienceInfo(id);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      getUserExperiences() async {
    try {
      final res = await _createDigitalProfileDataSource.getUserExperiences();

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      updateExperienceInfo(String id, ExperienceModel data) async {
    try {
      final res =
          await _createDigitalProfileDataSource.updateExperienceInfo(id, data);

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, void>>
      createDigitalProfile() async {
    try {
      final res = await _createDigitalProfileDataSource.createDigitalProfile();

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      updateDigitalProfile() async {
    try {
      final res = await _createDigitalProfileDataSource.updateDigitalProfile();

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      checkDigitalProfileIsAvailable() async {
    try {
      final res = await _createDigitalProfileDataSource
          .checkDigitalProfileIsAvailable();

      return Right(res);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
