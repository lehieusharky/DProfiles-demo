import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bar_result_model.freezed.dart';
part 'search_bar_result_model.g.dart';

@freezed
class SearchBarResultModel with _$SearchBarResultModel {
  const factory SearchBarResultModel({
    int? userId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? username,
    String? avatar,
    @JsonKey(name: 'job_title') String? jobTitle,
  }) = _SearchBarResultModel;

  factory SearchBarResultModel.fromJson(Map<String, Object?> json) =>
      _$SearchBarResultModelFromJson(json);
}
