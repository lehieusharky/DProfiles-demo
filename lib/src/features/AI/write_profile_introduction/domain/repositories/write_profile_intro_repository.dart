import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/models/profile_introduction_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class WriteProfileIntroRepository {
  Future<Either<WriteProfileIntroFailure, BaseResponse>>
      generateProfileIntroduction(ProfileIntroductionModel model);

  Future<Either<WriteProfileIntroFailure, BaseResponse>>
      getAutoGenerateHistory();
}

class WriteProfileIntroFailure extends AppFailure {
  const WriteProfileIntroFailure({super.msgCode, super.response});
}
