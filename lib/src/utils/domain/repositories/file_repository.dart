import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';

abstract class FileRepository {
  Future<Either<FileFailure, UploadFileResponse?>> uploadImage();

  Future<Either<FileFailure, List<String>>> uploadMultipleImages();
}

class FileFailure extends AppFailure {
  const FileFailure({super.msgCode, super.response});
}
