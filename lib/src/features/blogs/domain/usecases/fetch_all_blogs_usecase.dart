import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';

FetchAllBlogsUseCase get fetchAllBlogsUseCase =>
    injector.get<FetchAllBlogsUseCase>();

abstract class FetchAllBlogsUseCase {
  Future<Either<String, List<BlogModel>>> execute();
}
