import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';

abstract class BlogRepository {
  Future<Either<BlogFailure, List<BlogModel>>> getBlogs(int page);
}

class BlogFailure extends AppFailure {
  const BlogFailure({super.msgCode, super.response});
}
