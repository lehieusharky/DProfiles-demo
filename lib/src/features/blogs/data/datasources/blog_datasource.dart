import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';

abstract class BlogDataSource {
  Future<List<BlogModel>> getBlogs();
}
