import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_feed_model.freezed.dart';
part 'new_feed_model.g.dart';

@freezed
class NewFeedModel with _$NewFeedModel {
  const factory NewFeedModel({
    int? id,
    int? userId,
    int? adminId,
    String? content,
    @JsonKey(name: 'image_url') List<String>? imageUrl,
    @JsonKey(name: 'video_url') List<String>? videoUrl,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    User? user,
    int? noOfLike,
    int? noOfShare,
    int? noOfComment,
    @Default(false) bool liked,
  }) = _NewFeedModel;

  factory NewFeedModel.fromJson(Map<String, Object?> json) =>
      _$NewFeedModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? username,
    String? email,
    String? jobTitle,
    String? firstName,
    String? lastName,
    // Null? genderId,
    String? birthDay,
    String? address,
    String? avatar,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
