// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaLanguageModel _$MetaLanguageModelFromJson(Map<String, dynamic> json) {
  return _MetaLanguageModel.fromJson(json);
}

/// @nodoc
mixin _$MetaLanguageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get language => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaLanguageModelCopyWith<MetaLanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaLanguageModelCopyWith<$Res> {
  factory $MetaLanguageModelCopyWith(
          MetaLanguageModel value, $Res Function(MetaLanguageModel) then) =
      _$MetaLanguageModelCopyWithImpl<$Res, MetaLanguageModel>;
  @useResult
  $Res call({int? id, String? name, int? language, int? order});
}

/// @nodoc
class _$MetaLanguageModelCopyWithImpl<$Res, $Val extends MetaLanguageModel>
    implements $MetaLanguageModelCopyWith<$Res> {
  _$MetaLanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaLanguageModelImplCopyWith<$Res>
    implements $MetaLanguageModelCopyWith<$Res> {
  factory _$$MetaLanguageModelImplCopyWith(_$MetaLanguageModelImpl value,
          $Res Function(_$MetaLanguageModelImpl) then) =
      __$$MetaLanguageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? language, int? order});
}

/// @nodoc
class __$$MetaLanguageModelImplCopyWithImpl<$Res>
    extends _$MetaLanguageModelCopyWithImpl<$Res, _$MetaLanguageModelImpl>
    implements _$$MetaLanguageModelImplCopyWith<$Res> {
  __$$MetaLanguageModelImplCopyWithImpl(_$MetaLanguageModelImpl _value,
      $Res Function(_$MetaLanguageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? order = freezed,
  }) {
    return _then(_$MetaLanguageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaLanguageModelImpl implements _MetaLanguageModel {
  const _$MetaLanguageModelImpl(
      {this.id, this.name, this.language, this.order});

  factory _$MetaLanguageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaLanguageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? language;
  @override
  final int? order;

  @override
  String toString() {
    return 'MetaLanguageModel(id: $id, name: $name, language: $language, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaLanguageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, language, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaLanguageModelImplCopyWith<_$MetaLanguageModelImpl> get copyWith =>
      __$$MetaLanguageModelImplCopyWithImpl<_$MetaLanguageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaLanguageModelImplToJson(
      this,
    );
  }
}

abstract class _MetaLanguageModel implements MetaLanguageModel {
  const factory _MetaLanguageModel(
      {final int? id,
      final String? name,
      final int? language,
      final int? order}) = _$MetaLanguageModelImpl;

  factory _MetaLanguageModel.fromJson(Map<String, dynamic> json) =
      _$MetaLanguageModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get language;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$MetaLanguageModelImplCopyWith<_$MetaLanguageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
