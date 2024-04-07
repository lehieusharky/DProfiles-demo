import 'dart:convert';

import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@injectable
class StrapiService {
  final Dio _dio;

  StrapiService(@Named('strapi') this._dio);

  Future<List<BlogModel>> getBlogs() async {
    try {
      // TODO: Refactor to use common http client
      var response = await _dio.get(dotenv.get('blogsEndpoint'));
      if (response.statusCode == 200) {
        return _blogsFromJson(response.data['data']);
      } else {
        String error = jsonDecode(response.data)['error']['message'];
        throw Exception(error);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  List<BlogModel> _blogsFromJson(List<dynamic> post) =>
      List<BlogModel>.from(post.map((x) => BlogModel.fromStripeJson(x)));
}
