import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/home/domain/repositories/home_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class HomeUseCase {
  Future<Either<String, BaseResponse>> getNewsFeed(int page, int limit);
}

@Injectable(as: HomeUseCase)
class HomeUseCaseImpl implements HomeUseCase {
  final HomeRepository _homeRepository;

  HomeUseCaseImpl(this._homeRepository);

  @override
  Future<Either<String, BaseResponse>> getNewsFeed(int page, int limit) async {
    final result = await _homeRepository.getNewsFeed(page, limit);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ""),
      (r) => Right(r),
    );
  }
}
