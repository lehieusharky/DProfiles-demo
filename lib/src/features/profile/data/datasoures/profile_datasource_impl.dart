import 'package:demo_dprofiles/src/features/profile/data/datasoures/profile_datasource.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  @override
  Future<BaseResponse> getUserCertificates() async {
    try {
      final baseResponse = await MyHttp.rl().getUserCertificates();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserEducations() async {
    try {
      final baseResponse = await MyHttp.rl().getUserEducations();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserExperiences() async {
    try {
      final baseResponse = await MyHttp.rl().getUserExperiences();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserInfo() async {
    try {
      final baseResponse = await MyHttp.rl().getUserInfo();

      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserLanguage() async {
    try {
      final baseResponse = await MyHttp.rl().getUserLanguages();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserSkills() async {
    try {
      final baseResponse = await MyHttp.rl().getUserSkills();
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getMetaLanguage() async {
    try {
      final baseResponse = await MyHttp.rl().getMetaLanguage();
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteUserCertificate(int id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteCertificate(id);
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteUserEducation(int id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteEducationInfo(id);
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteUserExperience(int id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteExperienceInfo(id);
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateUserCertificate(
      CertificateModel certificateModel) async {
    try {
      final baseResponse = await MyHttp.rl().updateCertificateInfo(
          certificateModel.id!, certificateModel.toJson());
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateUserEducation(
      EducationModel educationModel) async {
    try {
      final baseResponse = await MyHttp.rl()
          .updateCertificateInfo(educationModel.id!, educationModel.toJson());
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateUserExperience(
      ExperienceModel experienceModel) async {
    try {
      final baseResponse = await MyHttp.rl()
          .updateExperienceInfo(experienceModel.id!, experienceModel.toJson());
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getBanner() async {
    try {
      final baseResponse = await MyHttp.rl().getBanner();
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> postBanner(String bannenUrlBanner) async {
    try {
      final body = {"banner_url": bannenUrlBanner};

      final baseResponse = await MyHttp.rl().postBanner(body);

      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
