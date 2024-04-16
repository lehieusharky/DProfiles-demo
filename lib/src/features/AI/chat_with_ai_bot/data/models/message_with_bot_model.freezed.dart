// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_with_bot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageWithBotModel _$MessageWithBotModelFromJson(Map<String, dynamic> json) {
  return _MessageWithBotModel.fromJson(json);
}

/// @nodoc
mixin _$MessageWithBotModel {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_user')
  bool? get isUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_at')
  String get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageWithBotModelCopyWith<MessageWithBotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageWithBotModelCopyWith<$Res> {
  factory $MessageWithBotModelCopyWith(
          MessageWithBotModel value, $Res Function(MessageWithBotModel) then) =
      _$MessageWithBotModelCopyWithImpl<$Res, MessageWithBotModel>;
  @useResult
  $Res call(
      {String message,
      @JsonKey(name: 'is_user') bool? isUser,
      @JsonKey(name: 'create_at') String createAt});
}

/// @nodoc
class _$MessageWithBotModelCopyWithImpl<$Res, $Val extends MessageWithBotModel>
    implements $MessageWithBotModelCopyWith<$Res> {
  _$MessageWithBotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isUser = freezed,
    Object? createAt = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isUser: freezed == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageWithBotModelImplCopyWith<$Res>
    implements $MessageWithBotModelCopyWith<$Res> {
  factory _$$MessageWithBotModelImplCopyWith(_$MessageWithBotModelImpl value,
          $Res Function(_$MessageWithBotModelImpl) then) =
      __$$MessageWithBotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      @JsonKey(name: 'is_user') bool? isUser,
      @JsonKey(name: 'create_at') String createAt});
}

/// @nodoc
class __$$MessageWithBotModelImplCopyWithImpl<$Res>
    extends _$MessageWithBotModelCopyWithImpl<$Res, _$MessageWithBotModelImpl>
    implements _$$MessageWithBotModelImplCopyWith<$Res> {
  __$$MessageWithBotModelImplCopyWithImpl(_$MessageWithBotModelImpl _value,
      $Res Function(_$MessageWithBotModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isUser = freezed,
    Object? createAt = null,
  }) {
    return _then(_$MessageWithBotModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isUser: freezed == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageWithBotModelImpl implements _MessageWithBotModel {
  const _$MessageWithBotModelImpl(
      {required this.message,
      @JsonKey(name: 'is_user') this.isUser,
      @JsonKey(name: 'create_at') required this.createAt});

  factory _$MessageWithBotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageWithBotModelImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey(name: 'is_user')
  final bool? isUser;
  @override
  @JsonKey(name: 'create_at')
  final String createAt;

  @override
  String toString() {
    return 'MessageWithBotModel(message: $message, isUser: $isUser, createAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageWithBotModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isUser, isUser) || other.isUser == isUser) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, isUser, createAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageWithBotModelImplCopyWith<_$MessageWithBotModelImpl> get copyWith =>
      __$$MessageWithBotModelImplCopyWithImpl<_$MessageWithBotModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageWithBotModelImplToJson(
      this,
    );
  }
}

abstract class _MessageWithBotModel implements MessageWithBotModel {
  const factory _MessageWithBotModel(
          {required final String message,
          @JsonKey(name: 'is_user') final bool? isUser,
          @JsonKey(name: 'create_at') required final String createAt}) =
      _$MessageWithBotModelImpl;

  factory _MessageWithBotModel.fromJson(Map<String, dynamic> json) =
      _$MessageWithBotModelImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: 'is_user')
  bool? get isUser;
  @override
  @JsonKey(name: 'create_at')
  String get createAt;
  @override
  @JsonKey(ignore: true)
  _$$MessageWithBotModelImplCopyWith<_$MessageWithBotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
