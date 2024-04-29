import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/data/datasources/file_datasource.dart';
import 'package:demo_dprofiles/src/utils/domain/repositories/file_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FileRepository)
class FileRepositoryImpl implements FileRepository {
  final FileDataSource _fileDataSource;

  FileRepositoryImpl(this._fileDataSource);

  @override
  Future<Either<FileFailure, UploadFileResponse?>> uploadImage() async {
    try {
      final response = await _fileDataSource.uploadImage();

      return Right(response);
    } on DioException catch (e) {
      return Left(FileFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
