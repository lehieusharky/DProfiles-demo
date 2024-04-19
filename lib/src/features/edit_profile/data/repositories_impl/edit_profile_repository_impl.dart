import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/edit_profile/data/datasources/edit_profile_datasource.dart';
import 'package:demo_dprofiles/src/features/edit_profile/domain/repositories/edit_profile_repository.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: EditProfileRepository)
class EditProfileRepositoryImpl implements EditProfileRepository {
  final EditProfileDataSource _editProfileDataSource;

  EditProfileRepositoryImpl(this._editProfileDataSource);

  @override
  Future<Either<EditProfileFailure, BaseResponse>> addNewCertificate(
      CertificateModel data) async {
    try {
      final res = await _editProfileDataSource.addNewCertificate(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(EditProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<EditProfileFailure, BaseResponse>> addNewEducation(
      EducationModel data) async {
    try {
      final res = await _editProfileDataSource.addNewEducation(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(EditProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<EditProfileFailure, BaseResponse>> addNewExperience(
      ExperienceModel data) async {
    try {
      final res = await _editProfileDataSource.addNewExperience(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(EditProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<EditProfileFailure, BaseResponse>> updateUserInfo(
      UserInfoModel data) async {
    try {
      final res = await _editProfileDataSource.updateUserInfo(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(EditProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<EditProfileFailure, BaseResponse>> addNewLanguage(
      int languageID) async {
    try {
      final res = await _editProfileDataSource.addNewLanguage(languageID);

      return Right(res);
    } on DioException catch (e) {
      return Left(EditProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<EditProfileFailure, BaseResponse>> addNewSkill(
      String skill) async {
    try {
      final res = await _editProfileDataSource.addNewSkill(skill);

      return Right(res);
    } on DioException catch (e) {
      return Left(EditProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }
}
