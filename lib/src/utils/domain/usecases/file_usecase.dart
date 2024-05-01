import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/domain/repositories/file_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';
import 'package:injectable/injectable.dart';

abstract class FileUseCase {
  Future<Either<String, UploadFileResponse?>> uploadFile();

  Future<Either<String, List<String>>> uploadMultipleFiles();

  Future<Either<String, UploadFileResponse?>> uploadImage();

  Future<Either<String, List<String>>> uploadMultipleImages();
}

@Injectable(as: FileUseCase)
class FileUseCaseImpl implements FileUseCase {
  final FileRepository _fileRepository;

  FileUseCaseImpl(this._fileRepository);

  @override
  Future<Either<String, UploadFileResponse?>> uploadFile() async {
    final result = await _fileRepository.uploadFile();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, List<String>>> uploadMultipleFiles() async {
    final result = await _fileRepository.uploadMultipleFiles();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, UploadFileResponse?>> uploadImage() async {
    final result = await _fileRepository.uploadImage();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, List<String>>> uploadMultipleImages() async {
    final result = await _fileRepository.uploadMultipleImages();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }
}
