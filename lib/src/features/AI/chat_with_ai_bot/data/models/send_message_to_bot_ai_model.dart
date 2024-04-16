import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_message_to_bot_ai_model.freezed.dart';

part 'send_message_to_bot_ai_model.g.dart';

@freezed
class SendMessageToBotAIModel with _$SendMessageToBotAIModel {
  const factory SendMessageToBotAIModel({
    @JsonKey(name: 'session_id') int? sessionId,
    @JsonKey(name: 'chat_bot_id') int? chatBotId,
    String? message,
  }) = _SendMessageToBotAIModel;

  factory SendMessageToBotAIModel.fromJson(Map<String, Object?> json) =>
      _$SendMessageToBotAIModelFromJson(json);
}
