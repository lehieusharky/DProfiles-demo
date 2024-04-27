import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_dprofile_update_model.freezed.dart';

part 'history_dprofile_update_model.g.dart';

@freezed
class HistoryDProfileUpdateModel with _$HistoryDProfileUpdateModel {
  const factory HistoryDProfileUpdateModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? transactionHash,
    String? transactionDate,
    String? description,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
  }) = _HistoryDProfileUpdateModel;

  factory HistoryDProfileUpdateModel.fromJson(Map<String, Object?> json) =>
      _$HistoryDProfileUpdateModelFromJson(json);
}
