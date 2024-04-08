import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:demo_dprofiles/src/utils/services/strapi/strapi_service.dart';
import 'package:injectable/injectable.dart';

import 'blog_datasource.dart';

@Injectable(as: BlogDataSource)
class BlogDataSourceImpl implements BlogDataSource {
  final StrapiService service;

  BlogDataSourceImpl(this.service);

  @override
  Future<List<BlogModel>> getBlogs(int page) async {
    return service.getBlogs(page);
  }
}
