import 'dart:io';
import 'dart:typed_data';

import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';

import 'file_datasource.dart';

@Injectable(as: FileDataSource)
class FileDataSourceImpl implements FileDataSource {
  @override
  Future<UploadFileResponse?> uploadImage() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', 'jpeg'],
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
}
