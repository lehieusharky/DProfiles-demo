import 'dart:io';
import 'package:demo_dprofiles/src/features/profile/data/datasoures/profile_datasource.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
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
  Future<UploadFileResponse?> uploadImage() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png'],
        withReadStream: true,
        withData: false,
      );

      if (result != null) {
        PlatformFile file = result.files.first;

        final body = {
          "file_name": file.name,
          "file_size_bytes": file.size,
          "content_type": "image/${file.extension}"
        };

        await MyHttp.rl().uploadImage(body).then((uploadedResponse) async {
          List<int> bytes = await File(file.path!).readAsBytes();

          final response = await MyHttp.getDio().put(
            uploadedResponse.presignedUrl!,
            data: bytes,
          );

          if (response.statusCode == 200) {
            return uploadedResponse;
          } else {
            return null;
          }
        });
      }

      return null;
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
}
