// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewFeedModel _$NewFeedModelFromJson(Map<String, dynamic> json) {
  return _NewFeedModel.fromJson(json);
}

/// @nodoc
mixin _$NewFeedModel {
  @JsonKey(name: 'id')
  int? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get postUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_id')
  int? get postAdminId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get postContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get postImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String? get postVideoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get postUpdatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get postUpdatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get postCreatedTs => throw _privateConstructorUsedError;
  int? get noOfLike => throw _privateConstructorUsedError;
  int? get noOfShare => throw _privateConstructorUsedError;
  int? get noOfComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'liked')
  bool get liked => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserInfoModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewFeedModelCopyWith<NewFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewFeedModelCopyWith<$Res> {
  factory $NewFeedModelCopyWith(
          NewFeedModel value, $Res Function(NewFeedModel) then) =
      _$NewFeedModelCopyWithImpl<$Res, NewFeedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? postId,
      @JsonKey(name: 'user_id') int? postUserId,
      @JsonKey(name: 'admin_id') int? postAdminId,
      @JsonKey(name: 'content') String? postContent,
      @JsonKey(name: 'image_url') String? postImageUrl,
      @JsonKey(name: 'video_url') String? postVideoUrl,
      @JsonKey(name: 'updated_on') String? postUpdatedOn,
      @JsonKey(name: 'updated_ts') String? postUpdatedTs,
      @JsonKey(name: 'created_ts') String? postCreatedTs,
      int? noOfLike,
      int? noOfShare,
      int? noOfComment,
      @JsonKey(name: 'liked') bool liked,
      @JsonKey(name: 'user') UserInfoModel? user});

  $UserInfoModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$NewFeedModelCopyWithImpl<$Res, $Val extends NewFeedModel>
    implements $NewFeedModelCopyWith<$Res> {
  _$NewFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? postUserId = freezed,
    Object? postAdminId = freezed,
    Object? postContent = freezed,
    Object? postImageUrl = freezed,
    Object? postVideoUrl = freezed,
    Object? postUpdatedOn = freezed,
    Object? postUpdatedTs = freezed,
    Object? postCreatedTs = freezed,
    Object? noOfLike = freezed,
    Object? noOfShare = freezed,
    Object? noOfComment = freezed,
    Object? liked = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      postUserId: freezed == postUserId
          ? _value.postUserId
          : postUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      postAdminId: freezed == postAdminId
          ? _value.postAdminId
          : postAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      postContent: freezed == postContent
          ? _value.postContent
          : postContent // ignore: cast_nullable_to_non_nullable
              as String?,
      postImageUrl: freezed == postImageUrl
          ? _value.postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      postVideoUrl: freezed == postVideoUrl
          ? _value.postVideoUrl
          : postVideoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      postUpdatedOn: freezed == postUpdatedOn
          ? _value.postUpdatedOn
          : postUpdatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      postUpdatedTs: freezed == postUpdatedTs
          ? _value.postUpdatedTs
          : postUpdatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      postCreatedTs: freezed == postCreatedTs
          ? _value.postCreatedTs
          : postCreatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfLike: freezed == noOfLike
          ? _value.noOfLike
          : noOfLike // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfShare: freezed == noOfShare
          ? _value.noOfShare
          : noOfShare // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfComment: freezed == noOfComment
          ? _value.noOfComment
          : noOfComment // ignore: cast_nullable_to_non_nullable
              as int?,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserInfoModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewFeedModelImplCopyWith<$Res>
    implements $NewFeedModelCopyWith<$Res> {
  factory _$$NewFeedModelImplCopyWith(
          _$NewFeedModelImpl value, $Res Function(_$NewFeedModelImpl) then) =
      __$$NewFeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? postId,
      @JsonKey(name: 'user_id') int? postUserId,
      @JsonKey(name: 'admin_id') int? postAdminId,
      @JsonKey(name: 'content') String? postContent,
      @JsonKey(name: 'image_url') String? postImageUrl,
      @JsonKey(name: 'video_url') String? postVideoUrl,
      @JsonKey(name: 'updated_on') String? postUpdatedOn,
      @JsonKey(name: 'updated_ts') String? postUpdatedTs,
      @JsonKey(name: 'created_ts') String? postCreatedTs,
      int? noOfLike,
      int? noOfShare,
      int? noOfComment,
      @JsonKey(name: 'liked') bool liked,
      @JsonKey(name: 'user') UserInfoModel? user});

  @override
  $UserInfoModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$NewFeedModelImplCopyWithImpl<$Res>
    extends _$NewFeedModelCopyWithImpl<$Res, _$NewFeedModelImpl>
    implements _$$NewFeedModelImplCopyWith<$Res> {
  __$$NewFeedModelImplCopyWithImpl(
      _$NewFeedModelImpl _value, $Res Function(_$NewFeedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? postUserId = freezed,
    Object? postAdminId = freezed,
    Object? postContent = freezed,
    Object? postImageUrl = freezed,
    Object? postVideoUrl = freezed,
    Object? postUpdatedOn = freezed,
    Object? postUpdatedTs = freezed,
    Object? postCreatedTs = freezed,
    Object? noOfLike = freezed,
    Object? noOfShare = freezed,
    Object? noOfComment = freezed,
    Object? liked = null,
    Object? user = freezed,
  }) {
    return _then(_$NewFeedModelImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      postUserId: freezed == postUserId
          ? _value.postUserId
          : postUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      postAdminId: freezed == postAdminId
          ? _value.postAdminId
          : postAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      postContent: freezed == postContent
          ? _value.postContent
          : postContent // ignore: cast_nullable_to_non_nullable
              as String?,
      postImageUrl: freezed == postImageUrl
          ? _value.postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      postVideoUrl: freezed == postVideoUrl
          ? _value.postVideoUrl
          : postVideoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      postUpdatedOn: freezed == postUpdatedOn
          ? _value.postUpdatedOn
          : postUpdatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      postUpdatedTs: freezed == postUpdatedTs
          ? _value.postUpdatedTs
          : postUpdatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      postCreatedTs: freezed == postCreatedTs
          ? _value.postCreatedTs
          : postCreatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfLike: freezed == noOfLike
          ? _value.noOfLike
          : noOfLike // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfShare: freezed == noOfShare
          ? _value.noOfShare
          : noOfShare // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfComment: freezed == noOfComment
          ? _value.noOfComment
          : noOfComment // ignore: cast_nullable_to_non_nullable
              as int?,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewFeedModelImpl implements _NewFeedModel {
  const _$NewFeedModelImpl(
      {@JsonKey(name: 'id') this.postId = 0,
      @JsonKey(name: 'user_id') this.postUserId = 0,
      @JsonKey(name: 'admin_id') this.postAdminId = 0,
      @JsonKey(name: 'content') this.postContent,
      @JsonKey(name: 'image_url') this.postImageUrl,
      @JsonKey(name: 'video_url') this.postVideoUrl,
      @JsonKey(name: 'updated_on') this.postUpdatedOn,
      @JsonKey(name: 'updated_ts') this.postUpdatedTs,
      @JsonKey(name: 'created_ts') this.postCreatedTs,
      this.noOfLike = 0,
      this.noOfShare = 0,
      this.noOfComment = 0,
      @JsonKey(name: 'liked') this.liked = false,
      @JsonKey(name: 'user') this.user});

  factory _$NewFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewFeedModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? postId;
  @override
  @JsonKey(name: 'user_id')
  final int? postUserId;
  @override
  @JsonKey(name: 'admin_id')
  final int? postAdminId;
  @override
  @JsonKey(name: 'content')
  final String? postContent;
  @override
  @JsonKey(name: 'image_url')
  final String? postImageUrl;
  @override
  @JsonKey(name: 'video_url')
  final String? postVideoUrl;
  @override
  @JsonKey(name: 'updated_on')
  final String? postUpdatedOn;
  @override
  @JsonKey(name: 'updated_ts')
  final String? postUpdatedTs;
  @override
  @JsonKey(name: 'created_ts')
  final String? postCreatedTs;
  @override
  @JsonKey()
  final int? noOfLike;
  @override
  @JsonKey()
  final int? noOfShare;
  @override
  @JsonKey()
  final int? noOfComment;
  @override
  @JsonKey(name: 'liked')
  final bool liked;
  @override
  @JsonKey(name: 'user')
  final UserInfoModel? user;

  @override
  String toString() {
    return 'NewFeedModel(postId: $postId, postUserId: $postUserId, postAdminId: $postAdminId, postContent: $postContent, postImageUrl: $postImageUrl, postVideoUrl: $postVideoUrl, postUpdatedOn: $postUpdatedOn, postUpdatedTs: $postUpdatedTs, postCreatedTs: $postCreatedTs, noOfLike: $noOfLike, noOfShare: $noOfShare, noOfComment: $noOfComment, liked: $liked, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewFeedModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postUserId, postUserId) ||
                other.postUserId == postUserId) &&
            (identical(other.postAdminId, postAdminId) ||
                other.postAdminId == postAdminId) &&
            (identical(other.postContent, postContent) ||
                other.postContent == postContent) &&
            (identical(other.postImageUrl, postImageUrl) ||
                other.postImageUrl == postImageUrl) &&
            (identical(other.postVideoUrl, postVideoUrl) ||
                other.postVideoUrl == postVideoUrl) &&
            (identical(other.postUpdatedOn, postUpdatedOn) ||
                other.postUpdatedOn == postUpdatedOn) &&
            (identical(other.postUpdatedTs, postUpdatedTs) ||
                other.postUpdatedTs == postUpdatedTs) &&
            (identical(other.postCreatedTs, postCreatedTs) ||
                other.postCreatedTs == postCreatedTs) &&
            (identical(other.noOfLike, noOfLike) ||
                other.noOfLike == noOfLike) &&
            (identical(other.noOfShare, noOfShare) ||
                other.noOfShare == noOfShare) &&
            (identical(other.noOfComment, noOfComment) ||
                other.noOfComment == noOfComment) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      postUserId,
      postAdminId,
      postContent,
      postImageUrl,
      postVideoUrl,
      postUpdatedOn,
      postUpdatedTs,
      postCreatedTs,
      noOfLike,
      noOfShare,
      noOfComment,
      liked,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewFeedModelImplCopyWith<_$NewFeedModelImpl> get copyWith =>
      __$$NewFeedModelImplCopyWithImpl<_$NewFeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewFeedModelImplToJson(
      this,
    );
  }
}

abstract class _NewFeedModel implements NewFeedModel {
  const factory _NewFeedModel(
      {@JsonKey(name: 'id') final int? postId,
      @JsonKey(name: 'user_id') final int? postUserId,
      @JsonKey(name: 'admin_id') final int? postAdminId,
      @JsonKey(name: 'content') final String? postContent,
      @JsonKey(name: 'image_url') final String? postImageUrl,
      @JsonKey(name: 'video_url') final String? postVideoUrl,
      @JsonKey(name: 'updated_on') final String? postUpdatedOn,
      @JsonKey(name: 'updated_ts') final String? postUpdatedTs,
      @JsonKey(name: 'created_ts') final String? postCreatedTs,
      final int? noOfLike,
      final int? noOfShare,
      final int? noOfComment,
      @JsonKey(name: 'liked') final bool liked,
      @JsonKey(name: 'user') final UserInfoModel? user}) = _$NewFeedModelImpl;

  factory _NewFeedModel.fromJson(Map<String, dynamic> json) =
      _$NewFeedModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get postId;
  @override
  @JsonKey(name: 'user_id')
  int? get postUserId;
  @override
  @JsonKey(name: 'admin_id')
  int? get postAdminId;
  @override
  @JsonKey(name: 'content')
  String? get postContent;
  @override
  @JsonKey(name: 'image_url')
  String? get postImageUrl;
  @override
  @JsonKey(name: 'video_url')
  String? get postVideoUrl;
  @override
  @JsonKey(name: 'updated_on')
  String? get postUpdatedOn;
  @override
  @JsonKey(name: 'updated_ts')
  String? get postUpdatedTs;
  @override
  @JsonKey(name: 'created_ts')
  String? get postCreatedTs;
  @override
  int? get noOfLike;
  @override
  int? get noOfShare;
  @override
  int? get noOfComment;
  @override
  @JsonKey(name: 'liked')
  bool get liked;
  @override
  @JsonKey(name: 'user')
  UserInfoModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$NewFeedModelImplCopyWith<_$NewFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
