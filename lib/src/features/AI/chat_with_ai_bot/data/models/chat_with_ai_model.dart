import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_with_ai_model.freezed.dart';

part 'chat_with_ai_model.g.dart';

@freezed
class ChatWIthAIModel with _$ChatWIthAIModel {
  const factory ChatWIthAIModel({
    @JsonKey(name: 'session_id') int? sessionId,
    @JsonKey(name: 'chat_bot_id') int? chatBotId,
    String? message,
  }) = _ChatWIthAIModel;

  factory ChatWIthAIModel.fromJson(Map<String, Object?> json) =>
      _$ChatWIthAIModelFromJson(json);
}
