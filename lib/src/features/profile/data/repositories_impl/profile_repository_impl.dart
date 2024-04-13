import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/profile/data/datasoures/profile_datasource.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _profileDataSource;

  ProfileRepositoryImpl(this._profileDataSource);

  @override
  Future<Either<ProfileFailure, BaseResponse>> getUserCertificates() async {
    try {
      final res = await _profileDataSource.getUserCertificates();

      return Right(res);
    } on DioException catch (e) {
      return Left(
          ProfileFailure(response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ProfileFailure, BaseResponse>> getUserEducations() async {
    try {
      final res = await _profileDataSource.getUserEducations();

      return Right(res);
    } on DioException catch (e) {
      return Left(
          ProfileFailure(response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ProfileFailure, BaseResponse>> getUserExperiences() async {
    try {
      final res = await _profileDataSource.getUserExperiences();

      return Right(res);
    } on DioException catch (e) {
      return Left(
          ProfileFailure(response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ProfileFailure, BaseResponse>> getUserInfo() async {
    try {
      final res = await _profileDataSource.getUserInfo();

      return Right(res);
    } on DioException catch (e) {
      return Left(
          ProfileFailure(response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ProfileFailure, BaseResponse>> addNewCertificate(
      CertificateModel data) async {
    try {
      final res = await _profileDataSource.addNewCertificate(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(
          ProfileFailure(response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ProfileFailure, BaseResponse>> addNewEducation(
      EducationModel data) async {
    try {
      final res = await _profileDataSource.addNewEducation(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(
          ProfileFailure(response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ProfileFailure, BaseResponse>> addNewExperience(
      ExperienceModel data) async {
    try {
      final res = await _profileDataSource.addNewExperience(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(
          ProfileFailure(response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ProfileFailure, BaseResponse>> updateUserInfo(
      UserInfoModel data) async {
    try {
      final res = await _profileDataSource.updateUserInfo(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(
          ProfileFailure(response: ErrorResponse.fromJson(e.response!.data)));
    }
  }
}
