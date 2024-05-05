// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      bannerUrl: json['banner_url'] as String?,
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts '] as String?,
      createdTs: json['created_ts'] as String?,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'banner_url': instance.bannerUrl,
      'updated_on': instance.updatedOn,
      'updated_ts ': instance.updatedTs,
      'created_ts': instance.createdTs,
      'order': instance.order,
    };
