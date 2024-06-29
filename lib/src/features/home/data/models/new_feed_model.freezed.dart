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
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get adminId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  List<String>? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  List<String>? get videoUrl => throw _privateConstructorUsedError;
  String? get updatedOn => throw _privateConstructorUsedError;
  String? get updatedTs => throw _privateConstructorUsedError;
  String? get createdTs => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  int? get noOfLike => throw _privateConstructorUsedError;
  int? get noOfShare => throw _privateConstructorUsedError;
  int? get noOfComment => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;

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
      {int? id,
      int? userId,
      int? adminId,
      String? content,
      @JsonKey(name: 'image_url') List<String>? imageUrl,
      @JsonKey(name: 'video_url') List<String>? videoUrl,
      String? updatedOn,
      String? updatedTs,
      String? createdTs,
      User? user,
      int? noOfLike,
      int? noOfShare,
      int? noOfComment,
      bool liked});

  $UserCopyWith<$Res>? get user;
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
    Object? id = freezed,
    Object? userId = freezed,
    Object? adminId = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
    Object? user = freezed,
    Object? noOfLike = freezed,
    Object? noOfShare = freezed,
    Object? noOfComment = freezed,
    Object? liked = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedTs: freezed == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTs: freezed == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
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
      {int? id,
      int? userId,
      int? adminId,
      String? content,
      @JsonKey(name: 'image_url') List<String>? imageUrl,
      @JsonKey(name: 'video_url') List<String>? videoUrl,
      String? updatedOn,
      String? updatedTs,
      String? createdTs,
      User? user,
      int? noOfLike,
      int? noOfShare,
      int? noOfComment,
      bool liked});

  @override
  $UserCopyWith<$Res>? get user;
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
    Object? id = freezed,
    Object? userId = freezed,
    Object? adminId = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
    Object? user = freezed,
    Object? noOfLike = freezed,
    Object? noOfShare = freezed,
    Object? noOfComment = freezed,
    Object? liked = null,
  }) {
    return _then(_$NewFeedModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value._imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrl: freezed == videoUrl
          ? _value._videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedTs: freezed == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTs: freezed == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewFeedModelImpl implements _NewFeedModel {
  const _$NewFeedModelImpl(
      {this.id,
      this.userId,
      this.adminId,
      this.content,
      @JsonKey(name: 'image_url') final List<String>? imageUrl,
      @JsonKey(name: 'video_url') final List<String>? videoUrl,
      this.updatedOn,
      this.updatedTs,
      this.createdTs,
      this.user,
      this.noOfLike,
      this.noOfShare,
      this.noOfComment,
      this.liked = false})
      : _imageUrl = imageUrl,
        _videoUrl = videoUrl;

  factory _$NewFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewFeedModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final int? adminId;
  @override
  final String? content;
  final List<String>? _imageUrl;
  @override
  @JsonKey(name: 'image_url')
  List<String>? get imageUrl {
    final value = _imageUrl;
    if (value == null) return null;
    if (_imageUrl is EqualUnmodifiableListView) return _imageUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _videoUrl;
  @override
  @JsonKey(name: 'video_url')
  List<String>? get videoUrl {
    final value = _videoUrl;
    if (value == null) return null;
    if (_videoUrl is EqualUnmodifiableListView) return _videoUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? updatedOn;
  @override
  final String? updatedTs;
  @override
  final String? createdTs;
  @override
  final User? user;
  @override
  final int? noOfLike;
  @override
  final int? noOfShare;
  @override
  final int? noOfComment;
  @override
  @JsonKey()
  final bool liked;

  @override
  String toString() {
    return 'NewFeedModel(id: $id, userId: $userId, adminId: $adminId, content: $content, imageUrl: $imageUrl, videoUrl: $videoUrl, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs, user: $user, noOfLike: $noOfLike, noOfShare: $noOfShare, noOfComment: $noOfComment, liked: $liked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewFeedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._imageUrl, _imageUrl) &&
            const DeepCollectionEquality().equals(other._videoUrl, _videoUrl) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.noOfLike, noOfLike) ||
                other.noOfLike == noOfLike) &&
            (identical(other.noOfShare, noOfShare) ||
                other.noOfShare == noOfShare) &&
            (identical(other.noOfComment, noOfComment) ||
                other.noOfComment == noOfComment) &&
            (identical(other.liked, liked) || other.liked == liked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      adminId,
      content,
      const DeepCollectionEquality().hash(_imageUrl),
      const DeepCollectionEquality().hash(_videoUrl),
      updatedOn,
      updatedTs,
      createdTs,
      user,
      noOfLike,
      noOfShare,
      noOfComment,
      liked);

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
      {final int? id,
      final int? userId,
      final int? adminId,
      final String? content,
      @JsonKey(name: 'image_url') final List<String>? imageUrl,
      @JsonKey(name: 'video_url') final List<String>? videoUrl,
      final String? updatedOn,
      final String? updatedTs,
      final String? createdTs,
      final User? user,
      final int? noOfLike,
      final int? noOfShare,
      final int? noOfComment,
      final bool liked}) = _$NewFeedModelImpl;

  factory _NewFeedModel.fromJson(Map<String, dynamic> json) =
      _$NewFeedModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  int? get adminId;
  @override
  String? get content;
  @override
  @JsonKey(name: 'image_url')
  List<String>? get imageUrl;
  @override
  @JsonKey(name: 'video_url')
  List<String>? get videoUrl;
  @override
  String? get updatedOn;
  @override
  String? get updatedTs;
  @override
  String? get createdTs;
  @override
  User? get user;
  @override
  int? get noOfLike;
  @override
  int? get noOfShare;
  @override
  int? get noOfComment;
  @override
  bool get liked;
  @override
  @JsonKey(ignore: true)
  _$$NewFeedModelImplCopyWith<_$NewFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError; // Null? genderId,
  String? get birthDay => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? jobTitle,
      String? firstName,
      String? lastName,
      String? birthDay,
      String? address,
      String? avatar});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? jobTitle = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthDay = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? jobTitle,
      String? firstName,
      String? lastName,
      String? birthDay,
      String? address,
      String? avatar});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? jobTitle = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthDay = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id,
      this.username,
      this.email,
      this.jobTitle,
      this.firstName,
      this.lastName,
      this.birthDay,
      this.address,
      this.avatar});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? jobTitle;
  @override
  final String? firstName;
  @override
  final String? lastName;
// Null? genderId,
  @override
  final String? birthDay;
  @override
  final String? address;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, jobTitle: $jobTitle, firstName: $firstName, lastName: $lastName, birthDay: $birthDay, address: $address, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, jobTitle,
      firstName, lastName, birthDay, address, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? id,
      final String? username,
      final String? email,
      final String? jobTitle,
      final String? firstName,
      final String? lastName,
      final String? birthDay,
      final String? address,
      final String? avatar}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get jobTitle;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override // Null? genderId,
  String? get birthDay;
  @override
  String? get address;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
