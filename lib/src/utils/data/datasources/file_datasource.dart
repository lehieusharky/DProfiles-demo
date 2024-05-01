import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';

abstract class FileDataSource {
  Future<UploadFileResponse?> uploadFile();

  Future<List<String>> uploadMultipleFiles();

  Future<UploadFileResponse?> uploadImage();

  Future<List<String>> uploadMultipleImages();
}
