// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateAccountModel _$CreateAccountModelFromJson(Map<String, dynamic> json) {
  return _CreateAccountModel.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountModel {
  @JsonKey(name: 'wallet_address')
  String? get walletAddress => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountModelCopyWith<CreateAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountModelCopyWith<$Res> {
  factory $CreateAccountModelCopyWith(
          CreateAccountModel value, $Res Function(CreateAccountModel) then) =
      _$CreateAccountModelCopyWithImpl<$Res, CreateAccountModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'wallet_address') String? walletAddress,
      String username,
      String password,
      String? email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName});
}

/// @nodoc
class _$CreateAccountModelCopyWithImpl<$Res, $Val extends CreateAccountModel>
    implements $CreateAccountModelCopyWith<$Res> {
  _$CreateAccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = freezed,
    Object? username = null,
    Object? password = null,
    Object? email = freezed,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAccountModelImplCopyWith<$Res>
    implements $CreateAccountModelCopyWith<$Res> {
  factory _$$CreateAccountModelImplCopyWith(_$CreateAccountModelImpl value,
          $Res Function(_$CreateAccountModelImpl) then) =
      __$$CreateAccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'wallet_address') String? walletAddress,
      String username,
      String password,
      String? email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName});
}

/// @nodoc
class __$$CreateAccountModelImplCopyWithImpl<$Res>
    extends _$CreateAccountModelCopyWithImpl<$Res, _$CreateAccountModelImpl>
    implements _$$CreateAccountModelImplCopyWith<$Res> {
  __$$CreateAccountModelImplCopyWithImpl(_$CreateAccountModelImpl _value,
      $Res Function(_$CreateAccountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = freezed,
    Object? username = null,
    Object? password = null,
    Object? email = freezed,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$CreateAccountModelImpl(
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAccountModelImpl implements _CreateAccountModel {
  const _$CreateAccountModelImpl(
      {@JsonKey(name: 'wallet_address') this.walletAddress = '',
      required this.username,
      required this.password,
      this.email = '',
      @JsonKey(name: 'first_name') this.firstName = '',
      @JsonKey(name: 'last_name') this.lastName = ''});

  factory _$CreateAccountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAccountModelImplFromJson(json);

  @override
  @JsonKey(name: 'wallet_address')
  final String? walletAddress;
  @override
  final String username;
  @override
  final String password;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;

  @override
  String toString() {
    return 'CreateAccountModel(walletAddress: $walletAddress, username: $username, password: $password, email: $email, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountModelImpl &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, walletAddress, username,
      password, email, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountModelImplCopyWith<_$CreateAccountModelImpl> get copyWith =>
      __$$CreateAccountModelImplCopyWithImpl<_$CreateAccountModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAccountModelImplToJson(
      this,
    );
  }
}

abstract class _CreateAccountModel implements CreateAccountModel {
  const factory _CreateAccountModel(
          {@JsonKey(name: 'wallet_address') final String? walletAddress,
          required final String username,
          required final String password,
          final String? email,
          @JsonKey(name: 'first_name') final String firstName,
          @JsonKey(name: 'last_name') final String lastName}) =
      _$CreateAccountModelImpl;

  factory _CreateAccountModel.fromJson(Map<String, dynamic> json) =
      _$CreateAccountModelImpl.fromJson;

  @override
  @JsonKey(name: 'wallet_address')
  String? get walletAddress;
  @override
  String get username;
  @override
  String get password;
  @override
  String? get email;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$CreateAccountModelImplCopyWith<_$CreateAccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
