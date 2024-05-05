// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_bot_message_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatBotMessageHistoryModelImpl _$$ChatBotMessageHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatBotMessageHistoryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userSenderId: (json['user_sender_id'] as num?)?.toInt(),
      chatbotSenderId: (json['chatbot_sender_id'] as num?)?.toInt(),
      userReceiverId: (json['user_receiver_id'] as num?)?.toInt(),
      chatbotReceiverId: (json['chatbot_receiver_id'] as num?)?.toInt(),
      conversationId: json['conversation_id'] as String?,
      content: json['content'] as String?,
      updatedOn: json['updated_on'] as String?,
      createdOn: json['created_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
    );

Map<String, dynamic> _$$ChatBotMessageHistoryModelImplToJson(
        _$ChatBotMessageHistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_sender_id': instance.userSenderId,
      'chatbot_sender_id': instance.chatbotSenderId,
      'user_receiver_id': instance.userReceiverId,
      'chatbot_receiver_id': instance.chatbotReceiverId,
      'conversation_id': instance.conversationId,
      'content': instance.content,
      'updated_on': instance.updatedOn,
      'created_on': instance.createdOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
    };
