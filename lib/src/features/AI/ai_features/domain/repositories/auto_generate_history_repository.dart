import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_cover_letter_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_interview_question_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_skill_knowledge_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class AutoGenerateRepository {
  Future<Either<AutoGenerateFailure, BaseResponse>> getAutoGenerateHistory();

  Future<Either<AutoGenerateFailure, BaseResponse>> generateProfileIntroduction(
      WriteProfileIntroductionModel model);

  Future<Either<AutoGenerateFailure, BaseResponse>> generateInterviewQuestion(
      WriteInterviewQuestionModel model);

  Future<Either<AutoGenerateFailure, BaseResponse>> generateSkillKnowledge(
      WriteSkillKnowledgeModel model);

  Future<Either<AutoGenerateFailure, BaseResponse>> generateCoverLetter(
      WriteCoverLetterModel model);
}

class AutoGenerateFailure extends AppFailure {
  const AutoGenerateFailure({super.msgCode, super.response});
}
