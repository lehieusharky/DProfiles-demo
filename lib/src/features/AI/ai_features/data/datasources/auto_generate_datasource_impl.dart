import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_cover_letter_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_interview_question_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_skill_knowledge_model.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'auto_generate_datasource.dart';

@Injectable(as: AutoGenerateDataSource)
class AutoGenerateDataSourceImpl implements AutoGenerateDataSource {
  @override
  Future<BaseResponse> getAutoGenerateHistory() async {
    try {
      final response = await MyHttp.rl().getAutoGenerateHistory();

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> generateProfileIntroduction(
      WriteProfileIntroductionModel model) async {
    try {
      final response =
          await MyHttp.rl().generateProfileIntroduction(model.toJson());

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> generateCoverLetter(WriteCoverLetterModel model) async {
    try {
      final response = await MyHttp.rl().generateCoverLetter(model.toJson());

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> generateInterviewQuestion(
      WriteInterviewQuestionModel model) async {
    try {
      final response =
          await MyHttp.rl().generateInterviewQuestion(model.toJson());

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> generateSkillKnowledge(
      WriteSkillKnowledgeModel model) async {
    try {
      final response = await MyHttp.rl().generateSkillKnowledge(model.toJson());

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getAutoGenerateHistoryDetail(int id) async {
    try {
      final response = await MyHttp.rl().getAutoGenerateHistoryItem(id);

      return response;
    } on DioException {
      rethrow;
    }
  }
}
