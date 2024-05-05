import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
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
    List<String>? imageUrl,
    List<String>? videoUrl,
    String? updatedOn,
    String? updatedTs,
    String? createdTs,
    User? user,
    int? noOfLike,
    int? noOfShare,
    int? noOfComment,
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
