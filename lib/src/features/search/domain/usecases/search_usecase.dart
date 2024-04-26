import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/search/domain/repositories/search_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class SearchUseCase {
  Future<Either<String, BaseResponse>> searchBar(
      String? search, int page, int? limit);
}

@Injectable(as: SearchUseCase)
class SearchUseCaseImpl implements SearchUseCase {
  final SearchRepository _searchRepository;

  SearchUseCaseImpl(this._searchRepository);

  @override
  Future<Either<String, BaseResponse>> searchBar(
      String? search, int page, int? limit) async {
    final result = await _searchRepository.searchBar(search, page, limit);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }
}
