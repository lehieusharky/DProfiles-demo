// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_id')
  int? get adminId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  List<String>? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  List<String>? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  int? get noOfLike => throw _privateConstructorUsedError;
  int? get noOfShare => throw _privateConstructorUsedError;
  int? get noOfComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'admin_id') int? adminId,
      String? content,
      @JsonKey(name: 'image_url') List<String>? imageUrl,
      @JsonKey(name: 'video_url') List<String>? videoUrl,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs,
      User? user,
      int? noOfLike,
      int? noOfShare,
      int? noOfComment});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'admin_id') int? adminId,
      String? content,
      @JsonKey(name: 'image_url') List<String>? imageUrl,
      @JsonKey(name: 'video_url') List<String>? videoUrl,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs,
      User? user,
      int? noOfLike,
      int? noOfShare,
      int? noOfComment});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
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
  }) {
    return _then(_$PostModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostModelImpl implements _PostModel {
  const _$PostModelImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'admin_id') this.adminId,
      this.content,
      @JsonKey(name: 'image_url') final List<String>? imageUrl,
      @JsonKey(name: 'video_url') final List<String>? videoUrl,
      @JsonKey(name: 'updated_on') this.updatedOn,
      @JsonKey(name: 'updated_ts') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs,
      this.user,
      this.noOfLike = 0,
      this.noOfShare = 0,
      this.noOfComment = 0})
      : _imageUrl = imageUrl,
        _videoUrl = videoUrl;

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'admin_id')
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
  @JsonKey(name: 'updated_on')
  final String? updatedOn;
  @override
  @JsonKey(name: 'updated_ts')
  final String? updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  final String? createdTs;
  @override
  final User? user;
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
  String toString() {
    return 'PostModel(id: $id, userId: $userId, adminId: $adminId, content: $content, imageUrl: $imageUrl, videoUrl: $videoUrl, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs, user: $user, noOfLike: $noOfLike, noOfShare: $noOfShare, noOfComment: $noOfComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
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
                other.noOfComment == noOfComment));
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
      noOfComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'admin_id') final int? adminId,
      final String? content,
      @JsonKey(name: 'image_url') final List<String>? imageUrl,
      @JsonKey(name: 'video_url') final List<String>? videoUrl,
      @JsonKey(name: 'updated_on') final String? updatedOn,
      @JsonKey(name: 'updated_ts') final String? updatedTs,
      @JsonKey(name: 'created_ts') final String? createdTs,
      final User? user,
      final int? noOfLike,
      final int? noOfShare,
      final int? noOfComment}) = _$PostModelImpl;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'admin_id')
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
  @JsonKey(name: 'updated_on')
  String? get updatedOn;
  @override
  @JsonKey(name: 'updated_ts')
  String? get updatedTs;
  @override
  @JsonKey(name: 'created_ts')
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
  @JsonKey(ignore: true)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
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
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_day')
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
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'birth_day') String? birthDay,
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
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'birth_day') String? birthDay,
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
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'birth_day') this.birthDay,
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
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'birth_day')
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
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'birth_day') final String? birthDay,
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
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'birth_day')
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
