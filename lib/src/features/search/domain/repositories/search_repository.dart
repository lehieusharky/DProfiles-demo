import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class SearchRepository {
  Future<Either<SearchFailure, BaseResponse>> searchBar(
      String? search, int page, int? limit);
}

class SearchFailure extends AppFailure {
  const SearchFailure({super.msgCode, super.response});
}
