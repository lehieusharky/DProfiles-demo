// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_with_bot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageWithBotModelImpl _$$MessageWithBotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageWithBotModelImpl(
      message: json['message'] as String,
      isUser: json['is_user'] as bool?,
      createAt: json['create_at'] as String,
    );

Map<String, dynamic> _$$MessageWithBotModelImplToJson(
        _$MessageWithBotModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'is_user': instance.isUser,
      'create_at': instance.createAt,
    };
