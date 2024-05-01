import 'dart:io';
import 'dart:typed_data';

import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import 'file_datasource.dart';

@Injectable(as: FileDataSource)
class FileDataSourceImpl implements FileDataSource {
  @override
  Future<UploadFileResponse?> uploadFile() async {
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

        final res = await MyHttp.rl().uploadImage(body);
        Uint8List image = File(file.path!).readAsBytesSync();
        final putAWSRes = await Dio().put(
          res.presignedUrl ?? '',
          options: Options(headers: {
            Headers.contentTypeHeader: "image/${file.extension}",
            Headers.contentLengthHeader: image.length,
          }),
          data: Stream.fromIterable(image.map((e) => [e])),
        );
        print(putAWSRes);
        return res;
      }

      return null;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<String>> uploadMultipleFiles() async {
    try {
      List<String> imageUrls = [];

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: true,
        allowedExtensions: ['jpg', 'png'],
        withReadStream: true,
        withData: false,
      );

      if (result != null) {
        for (var file in result.files) {
          final body = _body(
            name: file.name,
            size: file.size,
            extension: file.extension,
          );

          final res = await MyHttp.rl().uploadImage(body);

          Uint8List image = File(file.path!).readAsBytesSync();

          await Dio()
              .put(
                res.presignedUrl ?? '',
                options: Options(headers: {
                  Headers.contentTypeHeader: "image/${file.extension}",
                  Headers.contentLengthHeader: image.length,
                }),
                data: Stream.fromIterable(image.map((e) => [e])),
              )
              .whenComplete(() => imageUrls.add(res.previewUrl!));
        }
      }

      return imageUrls;
    } on DioException catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> _body({
    required String name,
    required int size,
    String? extension,
  }) {
    return {
      "file_name": name,
      "file_size_bytes": size,
      "content_type": "image/$extension"
    };
  }

  PlatformFile fileToPlatformFile(File file) {
    return PlatformFile(
      name: file.path.split('/').last,
      size: file.lengthSync(),
      bytes: file.readAsBytesSync(),
    );
  }

  @override
  Future<UploadFileResponse?> uploadImage() async {
    try {
      final ImagePicker picker = ImagePicker();

      final XFile? result = await picker.pickImage(source: ImageSource.gallery);

      if (result != null) {
        PlatformFile file = fileToPlatformFile(File(result.path));

        final body = {
          "file_name": file.name,
          "file_size_bytes": file.size,
          "content_type": "image/${file.extension}"
        };

        final res = await MyHttp.rl().uploadImage(body);

        Uint8List image = File(result.path).readAsBytesSync();

        final putAWSRes = await Dio().put(
          res.presignedUrl ?? '',
          options: Options(headers: {
            Headers.contentTypeHeader: "image/${file.extension}",
            Headers.contentLengthHeader: image.length,
          }),
          data: Stream.fromIterable(image.map((e) => [e])),
        );
        print(putAWSRes);
        return res;
      }

      return null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<String>> uploadMultipleImages() async {
    try {
      List<String> imageUrls = [];

      final ImagePicker picker = ImagePicker();

      final List<XFile> result = await picker.pickMultiImage();

      for (var e in result) {
        PlatformFile file = fileToPlatformFile(File(e.path));

        final body = _body(
          name: file.name,
          size: file.size,
          extension: file.extension,
        );

        final res = await MyHttp.rl().uploadImage(body);

        Uint8List image = File(e.path).readAsBytesSync();

        await Dio()
            .put(
              res.presignedUrl ?? '',
              options: Options(headers: {
                Headers.contentTypeHeader: "image/${file.extension}",
                Headers.contentLengthHeader: image.length,
              }),
              data: Stream.fromIterable(image.map((e) => [e])),
            )
            .whenComplete(() => imageUrls.add(res.previewUrl!));
      }

      return imageUrls;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
