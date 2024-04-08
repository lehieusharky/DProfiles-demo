// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_character_bot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatedCharacterBotModel _$CreatedCharacterBotModelFromJson(
    Map<String, dynamic> json) {
  return _CreateCharacterBotModel.fromJson(json);
}

/// @nodoc
mixin _$CreatedCharacterBotModel {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'long_description')
  String? get longDescription => throw _privateConstructorUsedError;
  String? get greeting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatedCharacterBotModelCopyWith<CreatedCharacterBotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedCharacterBotModelCopyWith<$Res> {
  factory $CreatedCharacterBotModelCopyWith(CreatedCharacterBotModel value,
          $Res Function(CreatedCharacterBotModel) then) =
      _$CreatedCharacterBotModelCopyWithImpl<$Res, CreatedCharacterBotModel>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'short_description') String? shortDescription,
      @JsonKey(name: 'long_description') String? longDescription,
      String? greeting});
}

/// @nodoc
class _$CreatedCharacterBotModelCopyWithImpl<$Res,
        $Val extends CreatedCharacterBotModel>
    implements $CreatedCharacterBotModelCopyWith<$Res> {
  _$CreatedCharacterBotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? longDescription = freezed,
    Object? greeting = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      greeting: freezed == greeting
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCharacterBotModelImplCopyWith<$Res>
    implements $CreatedCharacterBotModelCopyWith<$Res> {
  factory _$$CreateCharacterBotModelImplCopyWith(
          _$CreateCharacterBotModelImpl value,
          $Res Function(_$CreateCharacterBotModelImpl) then) =
      __$$CreateCharacterBotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'short_description') String? shortDescription,
      @JsonKey(name: 'long_description') String? longDescription,
      String? greeting});
}

/// @nodoc
class __$$CreateCharacterBotModelImplCopyWithImpl<$Res>
    extends _$CreatedCharacterBotModelCopyWithImpl<$Res,
        _$CreateCharacterBotModelImpl>
    implements _$$CreateCharacterBotModelImplCopyWith<$Res> {
  __$$CreateCharacterBotModelImplCopyWithImpl(
      _$CreateCharacterBotModelImpl _value,
      $Res Function(_$CreateCharacterBotModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? longDescription = freezed,
    Object? greeting = freezed,
  }) {
    return _then(_$CreateCharacterBotModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      greeting: freezed == greeting
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCharacterBotModelImpl implements _CreateCharacterBotModel {
  const _$CreateCharacterBotModelImpl(
      {this.name,
      @JsonKey(name: 'short_description') this.shortDescription,
      @JsonKey(name: 'long_description') this.longDescription,
      this.greeting});

  factory _$CreateCharacterBotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCharacterBotModelImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @override
  @JsonKey(name: 'long_description')
  final String? longDescription;
  @override
  final String? greeting;

  @override
  String toString() {
    return 'CreatedCharacterBotModel(name: $name, shortDescription: $shortDescription, longDescription: $longDescription, greeting: $greeting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCharacterBotModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription) &&
            (identical(other.greeting, greeting) ||
                other.greeting == greeting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, shortDescription, longDescription, greeting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCharacterBotModelImplCopyWith<_$CreateCharacterBotModelImpl>
      get copyWith => __$$CreateCharacterBotModelImplCopyWithImpl<
          _$CreateCharacterBotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCharacterBotModelImplToJson(
      this,
    );
  }
}

abstract class _CreateCharacterBotModel implements CreatedCharacterBotModel {
  const factory _CreateCharacterBotModel(
      {final String? name,
      @JsonKey(name: 'short_description') final String? shortDescription,
      @JsonKey(name: 'long_description') final String? longDescription,
      final String? greeting}) = _$CreateCharacterBotModelImpl;

  factory _CreateCharacterBotModel.fromJson(Map<String, dynamic> json) =
      _$CreateCharacterBotModelImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'short_description')
  String? get shortDescription;
  @override
  @JsonKey(name: 'long_description')
  String? get longDescription;
  @override
  String? get greeting;
  @override
  @JsonKey(ignore: true)
  _$$CreateCharacterBotModelImplCopyWith<_$CreateCharacterBotModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
