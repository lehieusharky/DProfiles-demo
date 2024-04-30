import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'admin_id') int? adminId,
    String? content,
    @JsonKey(name: 'image_url') List<String>? imageUrl,
    @JsonKey(name: 'video_url') List<String>? videoUrl,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    User? user,
    @Default(0) int? noOfLike,
    @Default(0) int? noOfShare,
    @Default(0) int? noOfComment,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json) =>
      _$PostModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? username,
    String? email,
    String? jobTitle,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'birth_day') String? birthDay,
    String? address,
    String? avatar,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
