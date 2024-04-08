import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_cover_letter_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_interview_question_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_skill_knowledge_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/repositories/auto_generate_history_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';


abstract class AutoGenerateUseCase {
  Future<Either<String, BaseResponse>> getAutoGenerateHistory();

  Future<Either<String, BaseResponse>> generateProfileIntroduction(
      WriteProfileIntroductionModel model);

  Future<Either<String, BaseResponse>> generateInterviewQuestion(
      WriteInterviewQuestionModel model);

  Future<Either<String, BaseResponse>> generateSkillKnowledge(
      WriteSkillKnowledgeModel model);

  Future<Either<String, BaseResponse>> generateCoverLetter(
      WriteCoverLetterModel model);
}

@Injectable(as: AutoGenerateUseCase)
class AutoGenerateUseCaseImpl implements AutoGenerateUseCase {
  final AutoGenerateRepository _autoGenerateRepository;

  AutoGenerateUseCaseImpl(this._autoGenerateRepository);

  @override
  Future<Either<String, BaseResponse>> getAutoGenerateHistory() async {
    final result = await _autoGenerateRepository.getAutoGenerateHistory();

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> generateCoverLetter(
      WriteCoverLetterModel model) async {
    final result = await _autoGenerateRepository.generateCoverLetter(model);

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> generateInterviewQuestion(
      WriteInterviewQuestionModel model) async {
    final result =
        await _autoGenerateRepository.generateInterviewQuestion(model);

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> generateProfileIntroduction(
      WriteProfileIntroductionModel model) async {
    final result =
        await _autoGenerateRepository.generateProfileIntroduction(model);

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> generateSkillKnowledge(
      WriteSkillKnowledgeModel model) async {
    final result = await _autoGenerateRepository.generateSkillKnowledge(model);

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }
}
