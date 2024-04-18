// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedCommentModel _$FeedCommentModelFromJson(Map<String, dynamic> json) {
  return _FeedCommentModel.fromJson(json);
}

/// @nodoc
mixin _$FeedCommentModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  int get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_id')
  int get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  DateTime get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  DateTime get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  DateTime get createdTs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCommentModelCopyWith<FeedCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCommentModelCopyWith<$Res> {
  factory $FeedCommentModelCopyWith(
          FeedCommentModel value, $Res Function(FeedCommentModel) then) =
      _$FeedCommentModelCopyWithImpl<$Res, FeedCommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'post_id') int postId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'comment_id') int commentId,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'updated_on') DateTime updatedOn,
      @JsonKey(name: 'updated_ts') DateTime updatedTs,
      @JsonKey(name: 'created_ts') DateTime createdTs});
}

/// @nodoc
class _$FeedCommentModelCopyWithImpl<$Res, $Val extends FeedCommentModel>
    implements $FeedCommentModelCopyWith<$Res> {
  _$FeedCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? commentId = null,
    Object? content = null,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? updatedOn = null,
    Object? updatedTs = null,
    Object? createdTs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: null == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedTs: null == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdTs: null == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedCommentModelImplCopyWith<$Res>
    implements $FeedCommentModelCopyWith<$Res> {
  factory _$$FeedCommentModelImplCopyWith(_$FeedCommentModelImpl value,
          $Res Function(_$FeedCommentModelImpl) then) =
      __$$FeedCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'post_id') int postId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'comment_id') int commentId,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'updated_on') DateTime updatedOn,
      @JsonKey(name: 'updated_ts') DateTime updatedTs,
      @JsonKey(name: 'created_ts') DateTime createdTs});
}

/// @nodoc
class __$$FeedCommentModelImplCopyWithImpl<$Res>
    extends _$FeedCommentModelCopyWithImpl<$Res, _$FeedCommentModelImpl>
    implements _$$FeedCommentModelImplCopyWith<$Res> {
  __$$FeedCommentModelImplCopyWithImpl(_$FeedCommentModelImpl _value,
      $Res Function(_$FeedCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? commentId = null,
    Object? content = null,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? updatedOn = null,
    Object? updatedTs = null,
    Object? createdTs = null,
  }) {
    return _then(_$FeedCommentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: null == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedTs: null == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdTs: null == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedCommentModelImpl implements _FeedCommentModel {
  _$FeedCommentModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'post_id') required this.postId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'comment_id') required this.commentId,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'video_url') this.videoUrl,
      @JsonKey(name: 'updated_on') required this.updatedOn,
      @JsonKey(name: 'updated_ts') required this.updatedTs,
      @JsonKey(name: 'created_ts') required this.createdTs});

  factory _$FeedCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedCommentModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'post_id')
  final int postId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'comment_id')
  final int commentId;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  @override
  @JsonKey(name: 'updated_on')
  final DateTime updatedOn;
  @override
  @JsonKey(name: 'updated_ts')
  final DateTime updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  final DateTime createdTs;

  @override
  String toString() {
    return 'FeedCommentModel(id: $id, postId: $postId, userId: $userId, commentId: $commentId, content: $content, imageUrl: $imageUrl, videoUrl: $videoUrl, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, userId, commentId,
      content, imageUrl, videoUrl, updatedOn, updatedTs, createdTs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCommentModelImplCopyWith<_$FeedCommentModelImpl> get copyWith =>
      __$$FeedCommentModelImplCopyWithImpl<_$FeedCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedCommentModelImplToJson(
      this,
    );
  }
}

abstract class _FeedCommentModel implements FeedCommentModel {
  factory _FeedCommentModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'post_id') required final int postId,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'comment_id') required final int commentId,
          @JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'image_url') final String? imageUrl,
          @JsonKey(name: 'video_url') final String? videoUrl,
          @JsonKey(name: 'updated_on') required final DateTime updatedOn,
          @JsonKey(name: 'updated_ts') required final DateTime updatedTs,
          @JsonKey(name: 'created_ts') required final DateTime createdTs}) =
      _$FeedCommentModelImpl;

  factory _FeedCommentModel.fromJson(Map<String, dynamic> json) =
      _$FeedCommentModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'post_id')
  int get postId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'comment_id')
  int get commentId;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  @JsonKey(name: 'updated_on')
  DateTime get updatedOn;
  @override
  @JsonKey(name: 'updated_ts')
  DateTime get updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  DateTime get createdTs;
  @override
  @JsonKey(ignore: true)
  _$$FeedCommentModelImplCopyWith<_$FeedCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
