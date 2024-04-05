// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendSignUpEmail,
    required TResult Function(String email) resendSignUpEmail,
    required TResult Function(String email, String code) validateSignUpCode,
    required TResult Function(CreateAccountModel model) createAccount,
    required TResult Function(String email, String password) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendSignUpEmail,
    TResult? Function(String email)? resendSignUpEmail,
    TResult? Function(String email, String code)? validateSignUpCode,
    TResult? Function(CreateAccountModel model)? createAccount,
    TResult? Function(String email, String password)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendSignUpEmail,
    TResult Function(String email)? resendSignUpEmail,
    TResult Function(String email, String code)? validateSignUpCode,
    TResult Function(CreateAccountModel model)? createAccount,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSendSignUpEmail value) sendSignUpEmail,
    required TResult Function(AuthResendSignUpEmail value) resendSignUpEmail,
    required TResult Function(AuthValidateSignUpCode value) validateSignUpCode,
    required TResult Function(AuthCreateAccount value) createAccount,
    required TResult Function(AuthSignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult? Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult? Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult? Function(AuthCreateAccount value)? createAccount,
    TResult? Function(AuthSignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult Function(AuthCreateAccount value)? createAccount,
    TResult Function(AuthSignIn value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthSendSignUpEmailImplCopyWith<$Res> {
  factory _$$AuthSendSignUpEmailImplCopyWith(_$AuthSendSignUpEmailImpl value,
          $Res Function(_$AuthSendSignUpEmailImpl) then) =
      __$$AuthSendSignUpEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthSendSignUpEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSendSignUpEmailImpl>
    implements _$$AuthSendSignUpEmailImplCopyWith<$Res> {
  __$$AuthSendSignUpEmailImplCopyWithImpl(_$AuthSendSignUpEmailImpl _value,
      $Res Function(_$AuthSendSignUpEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthSendSignUpEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSendSignUpEmailImpl implements AuthSendSignUpEmail {
  const _$AuthSendSignUpEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.sendSignUpEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSendSignUpEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSendSignUpEmailImplCopyWith<_$AuthSendSignUpEmailImpl> get copyWith =>
      __$$AuthSendSignUpEmailImplCopyWithImpl<_$AuthSendSignUpEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendSignUpEmail,
    required TResult Function(String email) resendSignUpEmail,
    required TResult Function(String email, String code) validateSignUpCode,
    required TResult Function(CreateAccountModel model) createAccount,
    required TResult Function(String email, String password) signIn,
  }) {
    return sendSignUpEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendSignUpEmail,
    TResult? Function(String email)? resendSignUpEmail,
    TResult? Function(String email, String code)? validateSignUpCode,
    TResult? Function(CreateAccountModel model)? createAccount,
    TResult? Function(String email, String password)? signIn,
  }) {
    return sendSignUpEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendSignUpEmail,
    TResult Function(String email)? resendSignUpEmail,
    TResult Function(String email, String code)? validateSignUpCode,
    TResult Function(CreateAccountModel model)? createAccount,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (sendSignUpEmail != null) {
      return sendSignUpEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSendSignUpEmail value) sendSignUpEmail,
    required TResult Function(AuthResendSignUpEmail value) resendSignUpEmail,
    required TResult Function(AuthValidateSignUpCode value) validateSignUpCode,
    required TResult Function(AuthCreateAccount value) createAccount,
    required TResult Function(AuthSignIn value) signIn,
  }) {
    return sendSignUpEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult? Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult? Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult? Function(AuthCreateAccount value)? createAccount,
    TResult? Function(AuthSignIn value)? signIn,
  }) {
    return sendSignUpEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult Function(AuthCreateAccount value)? createAccount,
    TResult Function(AuthSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (sendSignUpEmail != null) {
      return sendSignUpEmail(this);
    }
    return orElse();
  }
}

abstract class AuthSendSignUpEmail implements AuthEvent {
  const factory AuthSendSignUpEmail(final String email) =
      _$AuthSendSignUpEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$AuthSendSignUpEmailImplCopyWith<_$AuthSendSignUpEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResendSignUpEmailImplCopyWith<$Res> {
  factory _$$AuthResendSignUpEmailImplCopyWith(
          _$AuthResendSignUpEmailImpl value,
          $Res Function(_$AuthResendSignUpEmailImpl) then) =
      __$$AuthResendSignUpEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthResendSignUpEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthResendSignUpEmailImpl>
    implements _$$AuthResendSignUpEmailImplCopyWith<$Res> {
  __$$AuthResendSignUpEmailImplCopyWithImpl(_$AuthResendSignUpEmailImpl _value,
      $Res Function(_$AuthResendSignUpEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthResendSignUpEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthResendSignUpEmailImpl implements AuthResendSignUpEmail {
  const _$AuthResendSignUpEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resendSignUpEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResendSignUpEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResendSignUpEmailImplCopyWith<_$AuthResendSignUpEmailImpl>
      get copyWith => __$$AuthResendSignUpEmailImplCopyWithImpl<
          _$AuthResendSignUpEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendSignUpEmail,
    required TResult Function(String email) resendSignUpEmail,
    required TResult Function(String email, String code) validateSignUpCode,
    required TResult Function(CreateAccountModel model) createAccount,
    required TResult Function(String email, String password) signIn,
  }) {
    return resendSignUpEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendSignUpEmail,
    TResult? Function(String email)? resendSignUpEmail,
    TResult? Function(String email, String code)? validateSignUpCode,
    TResult? Function(CreateAccountModel model)? createAccount,
    TResult? Function(String email, String password)? signIn,
  }) {
    return resendSignUpEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendSignUpEmail,
    TResult Function(String email)? resendSignUpEmail,
    TResult Function(String email, String code)? validateSignUpCode,
    TResult Function(CreateAccountModel model)? createAccount,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (resendSignUpEmail != null) {
      return resendSignUpEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSendSignUpEmail value) sendSignUpEmail,
    required TResult Function(AuthResendSignUpEmail value) resendSignUpEmail,
    required TResult Function(AuthValidateSignUpCode value) validateSignUpCode,
    required TResult Function(AuthCreateAccount value) createAccount,
    required TResult Function(AuthSignIn value) signIn,
  }) {
    return resendSignUpEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult? Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult? Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult? Function(AuthCreateAccount value)? createAccount,
    TResult? Function(AuthSignIn value)? signIn,
  }) {
    return resendSignUpEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult Function(AuthCreateAccount value)? createAccount,
    TResult Function(AuthSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (resendSignUpEmail != null) {
      return resendSignUpEmail(this);
    }
    return orElse();
  }
}

abstract class AuthResendSignUpEmail implements AuthEvent {
  const factory AuthResendSignUpEmail(final String email) =
      _$AuthResendSignUpEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$AuthResendSignUpEmailImplCopyWith<_$AuthResendSignUpEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthValidateSignUpCodeImplCopyWith<$Res> {
  factory _$$AuthValidateSignUpCodeImplCopyWith(
          _$AuthValidateSignUpCodeImpl value,
          $Res Function(_$AuthValidateSignUpCodeImpl) then) =
      __$$AuthValidateSignUpCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$AuthValidateSignUpCodeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthValidateSignUpCodeImpl>
    implements _$$AuthValidateSignUpCodeImplCopyWith<$Res> {
  __$$AuthValidateSignUpCodeImplCopyWithImpl(
      _$AuthValidateSignUpCodeImpl _value,
      $Res Function(_$AuthValidateSignUpCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$AuthValidateSignUpCodeImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthValidateSignUpCodeImpl implements AuthValidateSignUpCode {
  const _$AuthValidateSignUpCodeImpl(this.email, this.code);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.validateSignUpCode(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthValidateSignUpCodeImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthValidateSignUpCodeImplCopyWith<_$AuthValidateSignUpCodeImpl>
      get copyWith => __$$AuthValidateSignUpCodeImplCopyWithImpl<
          _$AuthValidateSignUpCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendSignUpEmail,
    required TResult Function(String email) resendSignUpEmail,
    required TResult Function(String email, String code) validateSignUpCode,
    required TResult Function(CreateAccountModel model) createAccount,
    required TResult Function(String email, String password) signIn,
  }) {
    return validateSignUpCode(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendSignUpEmail,
    TResult? Function(String email)? resendSignUpEmail,
    TResult? Function(String email, String code)? validateSignUpCode,
    TResult? Function(CreateAccountModel model)? createAccount,
    TResult? Function(String email, String password)? signIn,
  }) {
    return validateSignUpCode?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendSignUpEmail,
    TResult Function(String email)? resendSignUpEmail,
    TResult Function(String email, String code)? validateSignUpCode,
    TResult Function(CreateAccountModel model)? createAccount,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (validateSignUpCode != null) {
      return validateSignUpCode(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSendSignUpEmail value) sendSignUpEmail,
    required TResult Function(AuthResendSignUpEmail value) resendSignUpEmail,
    required TResult Function(AuthValidateSignUpCode value) validateSignUpCode,
    required TResult Function(AuthCreateAccount value) createAccount,
    required TResult Function(AuthSignIn value) signIn,
  }) {
    return validateSignUpCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult? Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult? Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult? Function(AuthCreateAccount value)? createAccount,
    TResult? Function(AuthSignIn value)? signIn,
  }) {
    return validateSignUpCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult Function(AuthCreateAccount value)? createAccount,
    TResult Function(AuthSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (validateSignUpCode != null) {
      return validateSignUpCode(this);
    }
    return orElse();
  }
}

abstract class AuthValidateSignUpCode implements AuthEvent {
  const factory AuthValidateSignUpCode(final String email, final String code) =
      _$AuthValidateSignUpCodeImpl;

  String get email;
  String get code;
  @JsonKey(ignore: true)
  _$$AuthValidateSignUpCodeImplCopyWith<_$AuthValidateSignUpCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthCreateAccountImplCopyWith<$Res> {
  factory _$$AuthCreateAccountImplCopyWith(_$AuthCreateAccountImpl value,
          $Res Function(_$AuthCreateAccountImpl) then) =
      __$$AuthCreateAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAccountModel model});

  $CreateAccountModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$AuthCreateAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCreateAccountImpl>
    implements _$$AuthCreateAccountImplCopyWith<$Res> {
  __$$AuthCreateAccountImplCopyWithImpl(_$AuthCreateAccountImpl _value,
      $Res Function(_$AuthCreateAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AuthCreateAccountImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CreateAccountModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateAccountModelCopyWith<$Res> get model {
    return $CreateAccountModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AuthCreateAccountImpl implements AuthCreateAccount {
  const _$AuthCreateAccountImpl(this.model);

  @override
  final CreateAccountModel model;

  @override
  String toString() {
    return 'AuthEvent.createAccount(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCreateAccountImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthCreateAccountImplCopyWith<_$AuthCreateAccountImpl> get copyWith =>
      __$$AuthCreateAccountImplCopyWithImpl<_$AuthCreateAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendSignUpEmail,
    required TResult Function(String email) resendSignUpEmail,
    required TResult Function(String email, String code) validateSignUpCode,
    required TResult Function(CreateAccountModel model) createAccount,
    required TResult Function(String email, String password) signIn,
  }) {
    return createAccount(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendSignUpEmail,
    TResult? Function(String email)? resendSignUpEmail,
    TResult? Function(String email, String code)? validateSignUpCode,
    TResult? Function(CreateAccountModel model)? createAccount,
    TResult? Function(String email, String password)? signIn,
  }) {
    return createAccount?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendSignUpEmail,
    TResult Function(String email)? resendSignUpEmail,
    TResult Function(String email, String code)? validateSignUpCode,
    TResult Function(CreateAccountModel model)? createAccount,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSendSignUpEmail value) sendSignUpEmail,
    required TResult Function(AuthResendSignUpEmail value) resendSignUpEmail,
    required TResult Function(AuthValidateSignUpCode value) validateSignUpCode,
    required TResult Function(AuthCreateAccount value) createAccount,
    required TResult Function(AuthSignIn value) signIn,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult? Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult? Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult? Function(AuthCreateAccount value)? createAccount,
    TResult? Function(AuthSignIn value)? signIn,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult Function(AuthCreateAccount value)? createAccount,
    TResult Function(AuthSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class AuthCreateAccount implements AuthEvent {
  const factory AuthCreateAccount(final CreateAccountModel model) =
      _$AuthCreateAccountImpl;

  CreateAccountModel get model;
  @JsonKey(ignore: true)
  _$$AuthCreateAccountImplCopyWith<_$AuthCreateAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignInImplCopyWith<$Res> {
  factory _$$AuthSignInImplCopyWith(
          _$AuthSignInImpl value, $Res Function(_$AuthSignInImpl) then) =
      __$$AuthSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignInImpl>
    implements _$$AuthSignInImplCopyWith<$Res> {
  __$$AuthSignInImplCopyWithImpl(
      _$AuthSignInImpl _value, $Res Function(_$AuthSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignInImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInImpl implements AuthSignIn {
  const _$AuthSignInImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInImplCopyWith<_$AuthSignInImpl> get copyWith =>
      __$$AuthSignInImplCopyWithImpl<_$AuthSignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendSignUpEmail,
    required TResult Function(String email) resendSignUpEmail,
    required TResult Function(String email, String code) validateSignUpCode,
    required TResult Function(CreateAccountModel model) createAccount,
    required TResult Function(String email, String password) signIn,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendSignUpEmail,
    TResult? Function(String email)? resendSignUpEmail,
    TResult? Function(String email, String code)? validateSignUpCode,
    TResult? Function(CreateAccountModel model)? createAccount,
    TResult? Function(String email, String password)? signIn,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendSignUpEmail,
    TResult Function(String email)? resendSignUpEmail,
    TResult Function(String email, String code)? validateSignUpCode,
    TResult Function(CreateAccountModel model)? createAccount,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSendSignUpEmail value) sendSignUpEmail,
    required TResult Function(AuthResendSignUpEmail value) resendSignUpEmail,
    required TResult Function(AuthValidateSignUpCode value) validateSignUpCode,
    required TResult Function(AuthCreateAccount value) createAccount,
    required TResult Function(AuthSignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult? Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult? Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult? Function(AuthCreateAccount value)? createAccount,
    TResult? Function(AuthSignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSendSignUpEmail value)? sendSignUpEmail,
    TResult Function(AuthResendSignUpEmail value)? resendSignUpEmail,
    TResult Function(AuthValidateSignUpCode value)? validateSignUpCode,
    TResult Function(AuthCreateAccount value)? createAccount,
    TResult Function(AuthSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthSignIn implements AuthEvent {
  const factory AuthSignIn(final String email, final String password) =
      _$AuthSignInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthSignInImplCopyWith<_$AuthSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingImpl implements AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoadingImpl;
}

/// @nodoc
abstract class _$$AuthErrorImplCopyWith<$Res> {
  factory _$$AuthErrorImplCopyWith(
          _$AuthErrorImpl value, $Res Function(_$AuthErrorImpl) then) =
      __$$AuthErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String title});
}

/// @nodoc
class __$$AuthErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthErrorImpl>
    implements _$$AuthErrorImplCopyWith<$Res> {
  __$$AuthErrorImplCopyWithImpl(
      _$AuthErrorImpl _value, $Res Function(_$AuthErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = null,
  }) {
    return _then(_$AuthErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorImpl implements AuthError {
  const _$AuthErrorImpl({required this.message, required this.title});

  @override
  final String message;
  @override
  final String title;

  @override
  String toString() {
    return 'AuthState.error(message: $message, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      __$$AuthErrorImplCopyWithImpl<_$AuthErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return error(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return error?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthError implements AuthState {
  const factory AuthError(
      {required final String message,
      required final String title}) = _$AuthErrorImpl;

  String get message;
  String get title;
  @JsonKey(ignore: true)
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSendSignUpEmailSuccessImplCopyWith<$Res> {
  factory _$$AuthSendSignUpEmailSuccessImplCopyWith(
          _$AuthSendSignUpEmailSuccessImpl value,
          $Res Function(_$AuthSendSignUpEmailSuccessImpl) then) =
      __$$AuthSendSignUpEmailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthSendSignUpEmailSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSendSignUpEmailSuccessImpl>
    implements _$$AuthSendSignUpEmailSuccessImplCopyWith<$Res> {
  __$$AuthSendSignUpEmailSuccessImplCopyWithImpl(
      _$AuthSendSignUpEmailSuccessImpl _value,
      $Res Function(_$AuthSendSignUpEmailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthSendSignUpEmailSuccessImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSendSignUpEmailSuccessImpl implements AuthSendSignUpEmailSuccess {
  const _$AuthSendSignUpEmailSuccessImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthState.sendSignUpEmailSuccess(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSendSignUpEmailSuccessImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSendSignUpEmailSuccessImplCopyWith<_$AuthSendSignUpEmailSuccessImpl>
      get copyWith => __$$AuthSendSignUpEmailSuccessImplCopyWithImpl<
          _$AuthSendSignUpEmailSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return sendSignUpEmailSuccess(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return sendSignUpEmailSuccess?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (sendSignUpEmailSuccess != null) {
      return sendSignUpEmailSuccess(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return sendSignUpEmailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return sendSignUpEmailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (sendSignUpEmailSuccess != null) {
      return sendSignUpEmailSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthSendSignUpEmailSuccess implements AuthState {
  const factory AuthSendSignUpEmailSuccess(final String email) =
      _$AuthSendSignUpEmailSuccessImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$AuthSendSignUpEmailSuccessImplCopyWith<_$AuthSendSignUpEmailSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResendSignUpEmailSuccessImplCopyWith<$Res> {
  factory _$$AuthResendSignUpEmailSuccessImplCopyWith(
          _$AuthResendSignUpEmailSuccessImpl value,
          $Res Function(_$AuthResendSignUpEmailSuccessImpl) then) =
      __$$AuthResendSignUpEmailSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthResendSignUpEmailSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthResendSignUpEmailSuccessImpl>
    implements _$$AuthResendSignUpEmailSuccessImplCopyWith<$Res> {
  __$$AuthResendSignUpEmailSuccessImplCopyWithImpl(
      _$AuthResendSignUpEmailSuccessImpl _value,
      $Res Function(_$AuthResendSignUpEmailSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthResendSignUpEmailSuccessImpl
    implements AuthResendSignUpEmailSuccess {
  const _$AuthResendSignUpEmailSuccessImpl();

  @override
  String toString() {
    return 'AuthState.resendSignUpEmailSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResendSignUpEmailSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return resendSignUpEmailSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return resendSignUpEmailSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (resendSignUpEmailSuccess != null) {
      return resendSignUpEmailSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return resendSignUpEmailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return resendSignUpEmailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (resendSignUpEmailSuccess != null) {
      return resendSignUpEmailSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthResendSignUpEmailSuccess implements AuthState {
  const factory AuthResendSignUpEmailSuccess() =
      _$AuthResendSignUpEmailSuccessImpl;
}

/// @nodoc
abstract class _$$AuthValidateSignUpCodeSuccessImplCopyWith<$Res> {
  factory _$$AuthValidateSignUpCodeSuccessImplCopyWith(
          _$AuthValidateSignUpCodeSuccessImpl value,
          $Res Function(_$AuthValidateSignUpCodeSuccessImpl) then) =
      __$$AuthValidateSignUpCodeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthValidateSignUpCodeSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthValidateSignUpCodeSuccessImpl>
    implements _$$AuthValidateSignUpCodeSuccessImplCopyWith<$Res> {
  __$$AuthValidateSignUpCodeSuccessImplCopyWithImpl(
      _$AuthValidateSignUpCodeSuccessImpl _value,
      $Res Function(_$AuthValidateSignUpCodeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthValidateSignUpCodeSuccessImpl
    implements AuthValidateSignUpCodeSuccess {
  const _$AuthValidateSignUpCodeSuccessImpl();

  @override
  String toString() {
    return 'AuthState.validateSignUpCodeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthValidateSignUpCodeSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return validateSignUpCodeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return validateSignUpCodeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (validateSignUpCodeSuccess != null) {
      return validateSignUpCodeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return validateSignUpCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return validateSignUpCodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (validateSignUpCodeSuccess != null) {
      return validateSignUpCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthValidateSignUpCodeSuccess implements AuthState {
  const factory AuthValidateSignUpCodeSuccess() =
      _$AuthValidateSignUpCodeSuccessImpl;
}

/// @nodoc
abstract class _$$AuthValidateSignUpCodeFailedImplCopyWith<$Res> {
  factory _$$AuthValidateSignUpCodeFailedImplCopyWith(
          _$AuthValidateSignUpCodeFailedImpl value,
          $Res Function(_$AuthValidateSignUpCodeFailedImpl) then) =
      __$$AuthValidateSignUpCodeFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthValidateSignUpCodeFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthValidateSignUpCodeFailedImpl>
    implements _$$AuthValidateSignUpCodeFailedImplCopyWith<$Res> {
  __$$AuthValidateSignUpCodeFailedImplCopyWithImpl(
      _$AuthValidateSignUpCodeFailedImpl _value,
      $Res Function(_$AuthValidateSignUpCodeFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthValidateSignUpCodeFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthValidateSignUpCodeFailedImpl
    implements AuthValidateSignUpCodeFailed {
  const _$AuthValidateSignUpCodeFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.validateSignUpCodeFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthValidateSignUpCodeFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthValidateSignUpCodeFailedImplCopyWith<
          _$AuthValidateSignUpCodeFailedImpl>
      get copyWith => __$$AuthValidateSignUpCodeFailedImplCopyWithImpl<
          _$AuthValidateSignUpCodeFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return validateSignUpCodeFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return validateSignUpCodeFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (validateSignUpCodeFailed != null) {
      return validateSignUpCodeFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return validateSignUpCodeFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return validateSignUpCodeFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (validateSignUpCodeFailed != null) {
      return validateSignUpCodeFailed(this);
    }
    return orElse();
  }
}

abstract class AuthValidateSignUpCodeFailed implements AuthState {
  const factory AuthValidateSignUpCodeFailed(final String message) =
      _$AuthValidateSignUpCodeFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthValidateSignUpCodeFailedImplCopyWith<
          _$AuthValidateSignUpCodeFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthCreateAnAccountSuccessImplCopyWith<$Res> {
  factory _$$AuthCreateAnAccountSuccessImplCopyWith(
          _$AuthCreateAnAccountSuccessImpl value,
          $Res Function(_$AuthCreateAnAccountSuccessImpl) then) =
      __$$AuthCreateAnAccountSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCreateAnAccountSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthCreateAnAccountSuccessImpl>
    implements _$$AuthCreateAnAccountSuccessImplCopyWith<$Res> {
  __$$AuthCreateAnAccountSuccessImplCopyWithImpl(
      _$AuthCreateAnAccountSuccessImpl _value,
      $Res Function(_$AuthCreateAnAccountSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCreateAnAccountSuccessImpl implements AuthCreateAnAccountSuccess {
  const _$AuthCreateAnAccountSuccessImpl();

  @override
  String toString() {
    return 'AuthState.createAnAccountSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCreateAnAccountSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return createAnAccountSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return createAnAccountSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (createAnAccountSuccess != null) {
      return createAnAccountSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return createAnAccountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return createAnAccountSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (createAnAccountSuccess != null) {
      return createAnAccountSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthCreateAnAccountSuccess implements AuthState {
  const factory AuthCreateAnAccountSuccess() = _$AuthCreateAnAccountSuccessImpl;
}

/// @nodoc
abstract class _$$AuthSignInSuccessImplCopyWith<$Res> {
  factory _$$AuthSignInSuccessImplCopyWith(_$AuthSignInSuccessImpl value,
          $Res Function(_$AuthSignInSuccessImpl) then) =
      __$$AuthSignInSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignInSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSignInSuccessImpl>
    implements _$$AuthSignInSuccessImplCopyWith<$Res> {
  __$$AuthSignInSuccessImplCopyWithImpl(_$AuthSignInSuccessImpl _value,
      $Res Function(_$AuthSignInSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignInSuccessImpl implements AuthSignInSuccess {
  const _$AuthSignInSuccessImpl();

  @override
  String toString() {
    return 'AuthState.signInSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignInSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(String email) sendSignUpEmailSuccess,
    required TResult Function() resendSignUpEmailSuccess,
    required TResult Function() validateSignUpCodeSuccess,
    required TResult Function(String message) validateSignUpCodeFailed,
    required TResult Function() createAnAccountSuccess,
    required TResult Function() signInSuccess,
  }) {
    return signInSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(String email)? sendSignUpEmailSuccess,
    TResult? Function()? resendSignUpEmailSuccess,
    TResult? Function()? validateSignUpCodeSuccess,
    TResult? Function(String message)? validateSignUpCodeFailed,
    TResult? Function()? createAnAccountSuccess,
    TResult? Function()? signInSuccess,
  }) {
    return signInSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(String email)? sendSignUpEmailSuccess,
    TResult Function()? resendSignUpEmailSuccess,
    TResult Function()? validateSignUpCodeSuccess,
    TResult Function(String message)? validateSignUpCodeFailed,
    TResult Function()? createAnAccountSuccess,
    TResult Function()? signInSuccess,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthSendSignUpEmailSuccess value)
        sendSignUpEmailSuccess,
    required TResult Function(AuthResendSignUpEmailSuccess value)
        resendSignUpEmailSuccess,
    required TResult Function(AuthValidateSignUpCodeSuccess value)
        validateSignUpCodeSuccess,
    required TResult Function(AuthValidateSignUpCodeFailed value)
        validateSignUpCodeFailed,
    required TResult Function(AuthCreateAnAccountSuccess value)
        createAnAccountSuccess,
    required TResult Function(AuthSignInSuccess value) signInSuccess,
  }) {
    return signInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthError value)? error,
    TResult? Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult? Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult? Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult? Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult? Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult? Function(AuthSignInSuccess value)? signInSuccess,
  }) {
    return signInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthError value)? error,
    TResult Function(AuthSendSignUpEmailSuccess value)? sendSignUpEmailSuccess,
    TResult Function(AuthResendSignUpEmailSuccess value)?
        resendSignUpEmailSuccess,
    TResult Function(AuthValidateSignUpCodeSuccess value)?
        validateSignUpCodeSuccess,
    TResult Function(AuthValidateSignUpCodeFailed value)?
        validateSignUpCodeFailed,
    TResult Function(AuthCreateAnAccountSuccess value)? createAnAccountSuccess,
    TResult Function(AuthSignInSuccess value)? signInSuccess,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthSignInSuccess implements AuthState {
  const factory AuthSignInSuccess() = _$AuthSignInSuccessImpl;
}
