import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_interview_question_model.freezed.dart';

part 'write_interview_question_model.g.dart';

@freezed
class WriteInterviewQuestionModel with _$WriteInterviewQuestionModel {
  const factory WriteInterviewQuestionModel({
    @JsonKey(name: 'job_title') String? jobTitle,
    String? about,
    @JsonKey(name: 'gpt_model') @Default(3) int? gptModel,
    @Default('en') String? language,
  }) = _WriteInterviewQuestionModel;

  factory WriteInterviewQuestionModel.fromJson(Map<String, Object?> json) =>
      _$WriteInterviewQuestionModelFromJson(json);
}
