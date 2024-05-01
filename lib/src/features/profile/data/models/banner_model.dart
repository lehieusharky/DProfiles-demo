import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';

part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    int? userId,
    @JsonKey(name: 'banner_url') String? bannerUrl,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts ') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    int? order,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, Object?> json) =>
      _$BannerModelFromJson(json);
}
