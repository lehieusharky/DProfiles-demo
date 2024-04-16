import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_bot_message_history_model.freezed.dart';

part 'chat_bot_message_history_model.g.dart';

@freezed
class ChatBotMessageHistoryModel with _$ChatBotMessageHistoryModel {
  const factory ChatBotMessageHistoryModel({
    int? id,
    @JsonKey(name: 'user_sender_id') int? userSenderId,
    @JsonKey(name: 'chatbot_sender_id') int? chatbotSenderId,
    @JsonKey(name: 'user_receiver_id') int? userReceiverId,
    @JsonKey(name: 'chatbot_receiver_id') int? chatbotReceiverId,
    @JsonKey(name: 'conversation_id') String? conversationId,
    String? content,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'created_on') String? createdOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
  }) = _ChatBotMessageHistoryModel;

  factory ChatBotMessageHistoryModel.fromJson(Map<String, Object?> json) =>
      _$ChatBotMessageHistoryModelFromJson(json);
}
