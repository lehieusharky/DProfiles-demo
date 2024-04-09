import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class HomeRepository {
  Future<Either<HomeFailure, BaseResponse>> getNewsFeed(int page, int limit);
}

class HomeFailure extends AppFailure {
  const HomeFailure({super.msgCode, super.response});
}
