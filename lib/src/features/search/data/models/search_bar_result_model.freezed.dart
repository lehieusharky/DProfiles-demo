// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bar_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchBarResultModel _$SearchBarResultModelFromJson(Map<String, dynamic> json) {
  return _SearchBarResultModel.fromJson(json);
}

/// @nodoc
mixin _$SearchBarResultModel {
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_title')
  String? get jobTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchBarResultModelCopyWith<SearchBarResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBarResultModelCopyWith<$Res> {
  factory $SearchBarResultModelCopyWith(SearchBarResultModel value,
          $Res Function(SearchBarResultModel) then) =
      _$SearchBarResultModelCopyWithImpl<$Res, SearchBarResultModel>;
  @useResult
  $Res call(
      {int? userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      String? avatar,
      @JsonKey(name: 'job_title') String? jobTitle});
}

/// @nodoc
class _$SearchBarResultModelCopyWithImpl<$Res,
        $Val extends SearchBarResultModel>
    implements $SearchBarResultModelCopyWith<$Res> {
  _$SearchBarResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? jobTitle = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchBarResultModelImplCopyWith<$Res>
    implements $SearchBarResultModelCopyWith<$Res> {
  factory _$$SearchBarResultModelImplCopyWith(_$SearchBarResultModelImpl value,
          $Res Function(_$SearchBarResultModelImpl) then) =
      __$$SearchBarResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      String? avatar,
      @JsonKey(name: 'job_title') String? jobTitle});
}

/// @nodoc
class __$$SearchBarResultModelImplCopyWithImpl<$Res>
    extends _$SearchBarResultModelCopyWithImpl<$Res, _$SearchBarResultModelImpl>
    implements _$$SearchBarResultModelImplCopyWith<$Res> {
  __$$SearchBarResultModelImplCopyWithImpl(_$SearchBarResultModelImpl _value,
      $Res Function(_$SearchBarResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? jobTitle = freezed,
  }) {
    return _then(_$SearchBarResultModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchBarResultModelImpl implements _SearchBarResultModel {
  const _$SearchBarResultModelImpl(
      {this.userId,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.username,
      this.avatar,
      @JsonKey(name: 'job_title') this.jobTitle});

  factory _$SearchBarResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchBarResultModelImplFromJson(json);

  @override
  final int? userId;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? username;
  @override
  final String? avatar;
  @override
  @JsonKey(name: 'job_title')
  final String? jobTitle;

  @override
  String toString() {
    return 'SearchBarResultModel(userId: $userId, firstName: $firstName, lastName: $lastName, username: $username, avatar: $avatar, jobTitle: $jobTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarResultModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, firstName, lastName, username, avatar, jobTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBarResultModelImplCopyWith<_$SearchBarResultModelImpl>
      get copyWith =>
          __$$SearchBarResultModelImplCopyWithImpl<_$SearchBarResultModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchBarResultModelImplToJson(
      this,
    );
  }
}

abstract class _SearchBarResultModel implements SearchBarResultModel {
  const factory _SearchBarResultModel(
          {final int? userId,
          @JsonKey(name: 'first_name') final String? firstName,
          @JsonKey(name: 'last_name') final String? lastName,
          final String? username,
          final String? avatar,
          @JsonKey(name: 'job_title') final String? jobTitle}) =
      _$SearchBarResultModelImpl;

  factory _SearchBarResultModel.fromJson(Map<String, dynamic> json) =
      _$SearchBarResultModelImpl.fromJson;

  @override
  int? get userId;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get username;
  @override
  String? get avatar;
  @override
  @JsonKey(name: 'job_title')
  String? get jobTitle;
  @override
  @JsonKey(ignore: true)
  _$$SearchBarResultModelImplCopyWith<_$SearchBarResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
