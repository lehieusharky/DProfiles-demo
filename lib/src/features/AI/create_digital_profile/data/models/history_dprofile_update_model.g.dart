// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_dprofile_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryDProfileUpdateModelImpl _$$HistoryDProfileUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryDProfileUpdateModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      transactionHash: json['transactionHash'] as String?,
      transactionDate: json['transactionDate'] as String?,
      description: json['description'] as String?,
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
    );

Map<String, dynamic> _$$HistoryDProfileUpdateModelImplToJson(
        _$HistoryDProfileUpdateModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'transactionHash': instance.transactionHash,
      'transactionDate': instance.transactionDate,
      'description': instance.description,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
    };
