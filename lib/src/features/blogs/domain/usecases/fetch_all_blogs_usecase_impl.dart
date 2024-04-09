import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:demo_dprofiles/src/features/blogs/domain/repositories/blog_repository.dart';
import 'package:demo_dprofiles/src/features/blogs/domain/usecases/fetch_all_blogs_usecase.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FetchAllBlogsUseCase)
class FetchAllBlogsUseCaseImpl implements FetchAllBlogsUseCase {
  final BlogRepository _repository;

  FetchAllBlogsUseCaseImpl(this._repository);
  @override
  Future<Either<String, List<BlogModel>>> execute(int page) async {
    final result = await _repository.getBlogs(page);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }
}
