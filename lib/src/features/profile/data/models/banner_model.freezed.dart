// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_url')
  String? get bannerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts ')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {int? userId,
      @JsonKey(name: 'banner_url') String? bannerUrl,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts ') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs,
      int? order});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? bannerUrl = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      @JsonKey(name: 'banner_url') String? bannerUrl,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts ') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs,
      int? order});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? bannerUrl = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
    Object? order = freezed,
  }) {
    return _then(_$BannerModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerModelImpl implements _BannerModel {
  const _$BannerModelImpl(
      {this.userId,
      @JsonKey(name: 'banner_url') this.bannerUrl,
      @JsonKey(name: 'updated_on') this.updatedOn,
      @JsonKey(name: 'updated_ts ') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs,
      this.order});

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  final int? userId;
  @override
  @JsonKey(name: 'banner_url')
  final String? bannerUrl;
  @override
  @JsonKey(name: 'updated_on')
  final String? updatedOn;
  @override
  @JsonKey(name: 'updated_ts ')
  final String? updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  final String? createdTs;
  @override
  final int? order;

  @override
  String toString() {
    return 'BannerModel(userId: $userId, bannerUrl: $bannerUrl, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, bannerUrl, updatedOn, updatedTs, createdTs, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
      {final int? userId,
      @JsonKey(name: 'banner_url') final String? bannerUrl,
      @JsonKey(name: 'updated_on') final String? updatedOn,
      @JsonKey(name: 'updated_ts ') final String? updatedTs,
      @JsonKey(name: 'created_ts') final String? createdTs,
      final int? order}) = _$BannerModelImpl;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  int? get userId;
  @override
  @JsonKey(name: 'banner_url')
  String? get bannerUrl;
  @override
  @JsonKey(name: 'updated_on')
  String? get updatedOn;
  @override
  @JsonKey(name: 'updated_ts ')
  String? get updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  String? get createdTs;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}