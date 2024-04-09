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
  @JsonKey(name: 'character_definition')
  CharacterDefinition? get characterDefinition =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_bot_id')
  int? get chatBotId => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'character_definition')
      CharacterDefinition? characterDefinition,
      @JsonKey(name: 'chat_bot_id') int? chatBotId});

  $CharacterDefinitionCopyWith<$Res>? get characterDefinition;
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
    Object? characterDefinition = freezed,
    Object? chatBotId = freezed,
  }) {
    return _then(_value.copyWith(
      characterDefinition: freezed == characterDefinition
          ? _value.characterDefinition
          : characterDefinition // ignore: cast_nullable_to_non_nullable
              as CharacterDefinition?,
      chatBotId: freezed == chatBotId
          ? _value.chatBotId
          : chatBotId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterDefinitionCopyWith<$Res>? get characterDefinition {
    if (_value.characterDefinition == null) {
      return null;
    }

    return $CharacterDefinitionCopyWith<$Res>(_value.characterDefinition!,
        (value) {
      return _then(_value.copyWith(characterDefinition: value) as $Val);
    });
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
      {@JsonKey(name: 'character_definition')
      CharacterDefinition? characterDefinition,
      @JsonKey(name: 'chat_bot_id') int? chatBotId});

  @override
  $CharacterDefinitionCopyWith<$Res>? get characterDefinition;
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
    Object? characterDefinition = freezed,
    Object? chatBotId = freezed,
  }) {
    return _then(_$CreateCharacterBotModelImpl(
      characterDefinition: freezed == characterDefinition
          ? _value.characterDefinition
          : characterDefinition // ignore: cast_nullable_to_non_nullable
              as CharacterDefinition?,
      chatBotId: freezed == chatBotId
          ? _value.chatBotId
          : chatBotId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCharacterBotModelImpl implements _CreateCharacterBotModel {
  const _$CreateCharacterBotModelImpl(
      {@JsonKey(name: 'character_definition') this.characterDefinition,
      @JsonKey(name: 'chat_bot_id') this.chatBotId = 0});

  factory _$CreateCharacterBotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCharacterBotModelImplFromJson(json);

  @override
  @JsonKey(name: 'character_definition')
  final CharacterDefinition? characterDefinition;
  @override
  @JsonKey(name: 'chat_bot_id')
  final int? chatBotId;

  @override
  String toString() {
    return 'CreatedCharacterBotModel(characterDefinition: $characterDefinition, chatBotId: $chatBotId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCharacterBotModelImpl &&
            (identical(other.characterDefinition, characterDefinition) ||
                other.characterDefinition == characterDefinition) &&
            (identical(other.chatBotId, chatBotId) ||
                other.chatBotId == chatBotId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, characterDefinition, chatBotId);

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
          {@JsonKey(name: 'character_definition')
          final CharacterDefinition? characterDefinition,
          @JsonKey(name: 'chat_bot_id') final int? chatBotId}) =
      _$CreateCharacterBotModelImpl;

  factory _CreateCharacterBotModel.fromJson(Map<String, dynamic> json) =
      _$CreateCharacterBotModelImpl.fromJson;

  @override
  @JsonKey(name: 'character_definition')
  CharacterDefinition? get characterDefinition;
  @override
  @JsonKey(name: 'chat_bot_id')
  int? get chatBotId;
  @override
  @JsonKey(ignore: true)
  _$$CreateCharacterBotModelImplCopyWith<_$CreateCharacterBotModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CharacterDefinition _$CharacterDefinitionFromJson(Map<String, dynamic> json) {
  return _CharacterDefinition.fromJson(json);
}

/// @nodoc
mixin _$CharacterDefinition {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'long_description')
  String? get longDescription => throw _privateConstructorUsedError;
  String? get greeting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDefinitionCopyWith<CharacterDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDefinitionCopyWith<$Res> {
  factory $CharacterDefinitionCopyWith(
          CharacterDefinition value, $Res Function(CharacterDefinition) then) =
      _$CharacterDefinitionCopyWithImpl<$Res, CharacterDefinition>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'short_description') String? shortDescription,
      @JsonKey(name: 'long_description') String? longDescription,
      String? greeting});
}

/// @nodoc
class _$CharacterDefinitionCopyWithImpl<$Res, $Val extends CharacterDefinition>
    implements $CharacterDefinitionCopyWith<$Res> {
  _$CharacterDefinitionCopyWithImpl(this._value, this._then);

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
abstract class _$$CharacterDefinitionImplCopyWith<$Res>
    implements $CharacterDefinitionCopyWith<$Res> {
  factory _$$CharacterDefinitionImplCopyWith(_$CharacterDefinitionImpl value,
          $Res Function(_$CharacterDefinitionImpl) then) =
      __$$CharacterDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'short_description') String? shortDescription,
      @JsonKey(name: 'long_description') String? longDescription,
      String? greeting});
}

/// @nodoc
class __$$CharacterDefinitionImplCopyWithImpl<$Res>
    extends _$CharacterDefinitionCopyWithImpl<$Res, _$CharacterDefinitionImpl>
    implements _$$CharacterDefinitionImplCopyWith<$Res> {
  __$$CharacterDefinitionImplCopyWithImpl(_$CharacterDefinitionImpl _value,
      $Res Function(_$CharacterDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? longDescription = freezed,
    Object? greeting = freezed,
  }) {
    return _then(_$CharacterDefinitionImpl(
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
class _$CharacterDefinitionImpl implements _CharacterDefinition {
  const _$CharacterDefinitionImpl(
      {this.name,
      @JsonKey(name: 'short_description') this.shortDescription = "",
      @JsonKey(name: 'long_description') this.longDescription = "",
      this.greeting = ""});

  factory _$CharacterDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterDefinitionImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @override
  @JsonKey(name: 'long_description')
  final String? longDescription;
  @override
  @JsonKey()
  final String? greeting;

  @override
  String toString() {
    return 'CharacterDefinition(name: $name, shortDescription: $shortDescription, longDescription: $longDescription, greeting: $greeting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDefinitionImpl &&
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
  _$$CharacterDefinitionImplCopyWith<_$CharacterDefinitionImpl> get copyWith =>
      __$$CharacterDefinitionImplCopyWithImpl<_$CharacterDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDefinitionImplToJson(
      this,
    );
  }
}

abstract class _CharacterDefinition implements CharacterDefinition {
  const factory _CharacterDefinition(
      {final String? name,
      @JsonKey(name: 'short_description') final String? shortDescription,
      @JsonKey(name: 'long_description') final String? longDescription,
      final String? greeting}) = _$CharacterDefinitionImpl;

  factory _CharacterDefinition.fromJson(Map<String, dynamic> json) =
      _$CharacterDefinitionImpl.fromJson;

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
  _$$CharacterDefinitionImplCopyWith<_$CharacterDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
