import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource.dart';
import 'package:demo_dprofiles/src/utils/data/models/add_user_education_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CreateDigitalProfileDataSource)
class CreateDigitalProfileDataSourceImpl
    implements CreateDigitalProfileDataSource {
  // user info

  @override
  Future<BaseResponse> updateUserInfo(UserInfoModel params) async {
    try {
      final baseResponse = await MyHttp.rl().updateUserInfo(params.toJson());
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

  // certificate

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
  Future<BaseResponse> addUserCertificate(CertificateModel param) async {
    try {
      final baseResponse = await MyHttp.rl().addUserCertificate(param.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateUserCertificate(
      String id, CertificateModel data) async {
    try {
      final baseResponse =
          await MyHttp.rl().updateCertificateInfo(id, data.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteUserCertificate(String id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteCertificate(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getCertificateInfo(String id) async {
    try {
      final baseResponse = await MyHttp.rl().getCertificateInfo(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  // education

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
  Future<BaseResponse> addUserEducation(EducationModel data) async {
    try {
      final baseResponse = await MyHttp.rl().addUserEducation(data.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getEducationInfo(String id) async {
    try {
      final baseResponse = await MyHttp.rl().getEducationInfo(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateEducationInfo(
      String id, EducationModel data) async {
    try {
      final baseResponse =
          await MyHttp.rl().updateEducationInfo(id, data.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteEducation(String id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteEducationInfo(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  // experience

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
  Future<BaseResponse> addUserExperience(ExperienceModel data) async {
    try {
      final baseResponse = await MyHttp.rl().addUserExperience(data.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getExperienceInfo(String id) async {
    try {
      final baseResponse = await MyHttp.rl().getExperienceInfo(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateExperienceInfo(
      String id, ExperienceModel data) async {
    try {
      final baseResponse =
          await MyHttp.rl().updateExperienceInfo(id, data.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteExperience(String id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteExperienceInfo(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }
}
