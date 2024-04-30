// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)
        createPost,
    required TResult Function() uploadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)?
        createPost,
    TResult? Function()? uploadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)?
        createPost,
    TResult Function()? uploadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PostCreatePost value) createPost,
    required TResult Function(PostUploadImages value) uploadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostCreatePost value)? createPost,
    TResult? Function(PostUploadImages value)? uploadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostCreatePost value)? createPost,
    TResult Function(PostUploadImages value)? uploadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PostEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)
        createPost,
    required TResult Function() uploadImages,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)?
        createPost,
    TResult? Function()? uploadImages,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)?
        createPost,
    TResult Function()? uploadImages,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PostCreatePost value) createPost,
    required TResult Function(PostUploadImages value) uploadImages,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostCreatePost value)? createPost,
    TResult? Function(PostUploadImages value)? uploadImages,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostCreatePost value)? createPost,
    TResult Function(PostUploadImages value)? uploadImages,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PostEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PostCreatePostImplCopyWith<$Res> {
  factory _$$PostCreatePostImplCopyWith(_$PostCreatePostImpl value,
          $Res Function(_$PostCreatePostImpl) then) =
      __$$PostCreatePostImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int userID,
      int? adminID,
      String content,
      List<String>? imageUrl,
      List<String>? videoUrl});
}

/// @nodoc
class __$$PostCreatePostImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$PostCreatePostImpl>
    implements _$$PostCreatePostImplCopyWith<$Res> {
  __$$PostCreatePostImplCopyWithImpl(
      _$PostCreatePostImpl _value, $Res Function(_$PostCreatePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? adminID = freezed,
    Object? content = null,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_$PostCreatePostImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      adminID: freezed == adminID
          ? _value.adminID
          : adminID // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value._imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrl: freezed == videoUrl
          ? _value._videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$PostCreatePostImpl implements PostCreatePost {
  const _$PostCreatePostImpl(
      {required this.userID,
      this.adminID,
      required this.content,
      final List<String>? imageUrl,
      final List<String>? videoUrl})
      : _imageUrl = imageUrl,
        _videoUrl = videoUrl;

  @override
  final int userID;
  @override
  final int? adminID;
  @override
  final String content;
  final List<String>? _imageUrl;
  @override
  List<String>? get imageUrl {
    final value = _imageUrl;
    if (value == null) return null;
    if (_imageUrl is EqualUnmodifiableListView) return _imageUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _videoUrl;
  @override
  List<String>? get videoUrl {
    final value = _videoUrl;
    if (value == null) return null;
    if (_videoUrl is EqualUnmodifiableListView) return _videoUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostEvent.createPost(userID: $userID, adminID: $adminID, content: $content, imageUrl: $imageUrl, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCreatePostImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.adminID, adminID) || other.adminID == adminID) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._imageUrl, _imageUrl) &&
            const DeepCollectionEquality().equals(other._videoUrl, _videoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userID,
      adminID,
      content,
      const DeepCollectionEquality().hash(_imageUrl),
      const DeepCollectionEquality().hash(_videoUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCreatePostImplCopyWith<_$PostCreatePostImpl> get copyWith =>
      __$$PostCreatePostImplCopyWithImpl<_$PostCreatePostImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)
        createPost,
    required TResult Function() uploadImages,
  }) {
    return createPost(userID, adminID, content, imageUrl, videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)?
        createPost,
    TResult? Function()? uploadImages,
  }) {
    return createPost?.call(userID, adminID, content, imageUrl, videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)?
        createPost,
    TResult Function()? uploadImages,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(userID, adminID, content, imageUrl, videoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PostCreatePost value) createPost,
    required TResult Function(PostUploadImages value) uploadImages,
  }) {
    return createPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostCreatePost value)? createPost,
    TResult? Function(PostUploadImages value)? uploadImages,
  }) {
    return createPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostCreatePost value)? createPost,
    TResult Function(PostUploadImages value)? uploadImages,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(this);
    }
    return orElse();
  }
}

abstract class PostCreatePost implements PostEvent {
  const factory PostCreatePost(
      {required final int userID,
      final int? adminID,
      required final String content,
      final List<String>? imageUrl,
      final List<String>? videoUrl}) = _$PostCreatePostImpl;

  int get userID;
  int? get adminID;
  String get content;
  List<String>? get imageUrl;
  List<String>? get videoUrl;
  @JsonKey(ignore: true)
  _$$PostCreatePostImplCopyWith<_$PostCreatePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostUploadImagesImplCopyWith<$Res> {
  factory _$$PostUploadImagesImplCopyWith(_$PostUploadImagesImpl value,
          $Res Function(_$PostUploadImagesImpl) then) =
      __$$PostUploadImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostUploadImagesImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$PostUploadImagesImpl>
    implements _$$PostUploadImagesImplCopyWith<$Res> {
  __$$PostUploadImagesImplCopyWithImpl(_$PostUploadImagesImpl _value,
      $Res Function(_$PostUploadImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostUploadImagesImpl implements PostUploadImages {
  const _$PostUploadImagesImpl();

  @override
  String toString() {
    return 'PostEvent.uploadImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostUploadImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)
        createPost,
    required TResult Function() uploadImages,
  }) {
    return uploadImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)?
        createPost,
    TResult? Function()? uploadImages,
  }) {
    return uploadImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int userID, int? adminID, String content,
            List<String>? imageUrl, List<String>? videoUrl)?
        createPost,
    TResult Function()? uploadImages,
    required TResult orElse(),
  }) {
    if (uploadImages != null) {
      return uploadImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PostCreatePost value) createPost,
    required TResult Function(PostUploadImages value) uploadImages,
  }) {
    return uploadImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostCreatePost value)? createPost,
    TResult? Function(PostUploadImages value)? uploadImages,
  }) {
    return uploadImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostCreatePost value)? createPost,
    TResult Function(PostUploadImages value)? uploadImages,
    required TResult orElse(),
  }) {
    if (uploadImages != null) {
      return uploadImages(this);
    }
    return orElse();
  }
}

abstract class PostUploadImages implements PostEvent {
  const factory PostUploadImages() = _$PostUploadImagesImpl;
}

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String mesg) error,
    required TResult Function(PostModel createdPost) createPostSuccess,
    required TResult Function(List<String> images) uploadImagesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String mesg)? error,
    TResult? Function(PostModel createdPost)? createPostSuccess,
    TResult? Function(List<String> images)? uploadImagesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String mesg)? error,
    TResult Function(PostModel createdPost)? createPostSuccess,
    TResult Function(List<String> images)? uploadImagesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostLoading value) loading,
    required TResult Function(PostError value) error,
    required TResult Function(PostCreatePostSuccess value) createPostSuccess,
    required TResult Function(PostUploadImagesSuccess value)
        uploadImagesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostLoading value)? loading,
    TResult? Function(PostError value)? error,
    TResult? Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult? Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostLoading value)? loading,
    TResult Function(PostError value)? error,
    TResult Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

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
    extends _$PostStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'PostState.initial()';
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
    required TResult Function(String title, String mesg) error,
    required TResult Function(PostModel createdPost) createPostSuccess,
    required TResult Function(List<String> images) uploadImagesSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String mesg)? error,
    TResult? Function(PostModel createdPost)? createPostSuccess,
    TResult? Function(List<String> images)? uploadImagesSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String mesg)? error,
    TResult Function(PostModel createdPost)? createPostSuccess,
    TResult Function(List<String> images)? uploadImagesSuccess,
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
    required TResult Function(PostLoading value) loading,
    required TResult Function(PostError value) error,
    required TResult Function(PostCreatePostSuccess value) createPostSuccess,
    required TResult Function(PostUploadImagesSuccess value)
        uploadImagesSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostLoading value)? loading,
    TResult? Function(PostError value)? error,
    TResult? Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult? Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostLoading value)? loading,
    TResult Function(PostError value)? error,
    TResult Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PostLoadingImplCopyWith<$Res> {
  factory _$$PostLoadingImplCopyWith(
          _$PostLoadingImpl value, $Res Function(_$PostLoadingImpl) then) =
      __$$PostLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostLoadingImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostLoadingImpl>
    implements _$$PostLoadingImplCopyWith<$Res> {
  __$$PostLoadingImplCopyWithImpl(
      _$PostLoadingImpl _value, $Res Function(_$PostLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostLoadingImpl implements PostLoading {
  const _$PostLoadingImpl();

  @override
  String toString() {
    return 'PostState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String mesg) error,
    required TResult Function(PostModel createdPost) createPostSuccess,
    required TResult Function(List<String> images) uploadImagesSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String mesg)? error,
    TResult? Function(PostModel createdPost)? createPostSuccess,
    TResult? Function(List<String> images)? uploadImagesSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String mesg)? error,
    TResult Function(PostModel createdPost)? createPostSuccess,
    TResult Function(List<String> images)? uploadImagesSuccess,
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
    required TResult Function(PostLoading value) loading,
    required TResult Function(PostError value) error,
    required TResult Function(PostCreatePostSuccess value) createPostSuccess,
    required TResult Function(PostUploadImagesSuccess value)
        uploadImagesSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostLoading value)? loading,
    TResult? Function(PostError value)? error,
    TResult? Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult? Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostLoading value)? loading,
    TResult Function(PostError value)? error,
    TResult Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostLoading implements PostState {
  const factory PostLoading() = _$PostLoadingImpl;
}

/// @nodoc
abstract class _$$PostErrorImplCopyWith<$Res> {
  factory _$$PostErrorImplCopyWith(
          _$PostErrorImpl value, $Res Function(_$PostErrorImpl) then) =
      __$$PostErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String mesg});
}

/// @nodoc
class __$$PostErrorImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostErrorImpl>
    implements _$$PostErrorImplCopyWith<$Res> {
  __$$PostErrorImplCopyWithImpl(
      _$PostErrorImpl _value, $Res Function(_$PostErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? mesg = null,
  }) {
    return _then(_$PostErrorImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mesg: null == mesg
          ? _value.mesg
          : mesg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostErrorImpl implements PostError {
  const _$PostErrorImpl({required this.title, required this.mesg});

  @override
  final String title;
  @override
  final String mesg;

  @override
  String toString() {
    return 'PostState.error(title: $title, mesg: $mesg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostErrorImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mesg, mesg) || other.mesg == mesg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, mesg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostErrorImplCopyWith<_$PostErrorImpl> get copyWith =>
      __$$PostErrorImplCopyWithImpl<_$PostErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String mesg) error,
    required TResult Function(PostModel createdPost) createPostSuccess,
    required TResult Function(List<String> images) uploadImagesSuccess,
  }) {
    return error(title, mesg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String mesg)? error,
    TResult? Function(PostModel createdPost)? createPostSuccess,
    TResult? Function(List<String> images)? uploadImagesSuccess,
  }) {
    return error?.call(title, mesg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String mesg)? error,
    TResult Function(PostModel createdPost)? createPostSuccess,
    TResult Function(List<String> images)? uploadImagesSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(title, mesg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostLoading value) loading,
    required TResult Function(PostError value) error,
    required TResult Function(PostCreatePostSuccess value) createPostSuccess,
    required TResult Function(PostUploadImagesSuccess value)
        uploadImagesSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostLoading value)? loading,
    TResult? Function(PostError value)? error,
    TResult? Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult? Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostLoading value)? loading,
    TResult Function(PostError value)? error,
    TResult Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostError implements PostState {
  const factory PostError(
      {required final String title,
      required final String mesg}) = _$PostErrorImpl;

  String get title;
  String get mesg;
  @JsonKey(ignore: true)
  _$$PostErrorImplCopyWith<_$PostErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostCreatePostSuccessImplCopyWith<$Res> {
  factory _$$PostCreatePostSuccessImplCopyWith(
          _$PostCreatePostSuccessImpl value,
          $Res Function(_$PostCreatePostSuccessImpl) then) =
      __$$PostCreatePostSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostModel createdPost});

  $PostModelCopyWith<$Res> get createdPost;
}

/// @nodoc
class __$$PostCreatePostSuccessImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostCreatePostSuccessImpl>
    implements _$$PostCreatePostSuccessImplCopyWith<$Res> {
  __$$PostCreatePostSuccessImplCopyWithImpl(_$PostCreatePostSuccessImpl _value,
      $Res Function(_$PostCreatePostSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdPost = null,
  }) {
    return _then(_$PostCreatePostSuccessImpl(
      null == createdPost
          ? _value.createdPost
          : createdPost // ignore: cast_nullable_to_non_nullable
              as PostModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostModelCopyWith<$Res> get createdPost {
    return $PostModelCopyWith<$Res>(_value.createdPost, (value) {
      return _then(_value.copyWith(createdPost: value));
    });
  }
}

/// @nodoc

class _$PostCreatePostSuccessImpl implements PostCreatePostSuccess {
  const _$PostCreatePostSuccessImpl(this.createdPost);

  @override
  final PostModel createdPost;

  @override
  String toString() {
    return 'PostState.createPostSuccess(createdPost: $createdPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCreatePostSuccessImpl &&
            (identical(other.createdPost, createdPost) ||
                other.createdPost == createdPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCreatePostSuccessImplCopyWith<_$PostCreatePostSuccessImpl>
      get copyWith => __$$PostCreatePostSuccessImplCopyWithImpl<
          _$PostCreatePostSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String mesg) error,
    required TResult Function(PostModel createdPost) createPostSuccess,
    required TResult Function(List<String> images) uploadImagesSuccess,
  }) {
    return createPostSuccess(createdPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String mesg)? error,
    TResult? Function(PostModel createdPost)? createPostSuccess,
    TResult? Function(List<String> images)? uploadImagesSuccess,
  }) {
    return createPostSuccess?.call(createdPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String mesg)? error,
    TResult Function(PostModel createdPost)? createPostSuccess,
    TResult Function(List<String> images)? uploadImagesSuccess,
    required TResult orElse(),
  }) {
    if (createPostSuccess != null) {
      return createPostSuccess(createdPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostLoading value) loading,
    required TResult Function(PostError value) error,
    required TResult Function(PostCreatePostSuccess value) createPostSuccess,
    required TResult Function(PostUploadImagesSuccess value)
        uploadImagesSuccess,
  }) {
    return createPostSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostLoading value)? loading,
    TResult? Function(PostError value)? error,
    TResult? Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult? Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
  }) {
    return createPostSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostLoading value)? loading,
    TResult Function(PostError value)? error,
    TResult Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
    required TResult orElse(),
  }) {
    if (createPostSuccess != null) {
      return createPostSuccess(this);
    }
    return orElse();
  }
}

abstract class PostCreatePostSuccess implements PostState {
  const factory PostCreatePostSuccess(final PostModel createdPost) =
      _$PostCreatePostSuccessImpl;

  PostModel get createdPost;
  @JsonKey(ignore: true)
  _$$PostCreatePostSuccessImplCopyWith<_$PostCreatePostSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostUploadImagesSuccessImplCopyWith<$Res> {
  factory _$$PostUploadImagesSuccessImplCopyWith(
          _$PostUploadImagesSuccessImpl value,
          $Res Function(_$PostUploadImagesSuccessImpl) then) =
      __$$PostUploadImagesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> images});
}

/// @nodoc
class __$$PostUploadImagesSuccessImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostUploadImagesSuccessImpl>
    implements _$$PostUploadImagesSuccessImplCopyWith<$Res> {
  __$$PostUploadImagesSuccessImplCopyWithImpl(
      _$PostUploadImagesSuccessImpl _value,
      $Res Function(_$PostUploadImagesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$PostUploadImagesSuccessImpl(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PostUploadImagesSuccessImpl implements PostUploadImagesSuccess {
  const _$PostUploadImagesSuccessImpl(final List<String> images)
      : _images = images;

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'PostState.uploadImagesSuccess(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostUploadImagesSuccessImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostUploadImagesSuccessImplCopyWith<_$PostUploadImagesSuccessImpl>
      get copyWith => __$$PostUploadImagesSuccessImplCopyWithImpl<
          _$PostUploadImagesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String mesg) error,
    required TResult Function(PostModel createdPost) createPostSuccess,
    required TResult Function(List<String> images) uploadImagesSuccess,
  }) {
    return uploadImagesSuccess(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String mesg)? error,
    TResult? Function(PostModel createdPost)? createPostSuccess,
    TResult? Function(List<String> images)? uploadImagesSuccess,
  }) {
    return uploadImagesSuccess?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String mesg)? error,
    TResult Function(PostModel createdPost)? createPostSuccess,
    TResult Function(List<String> images)? uploadImagesSuccess,
    required TResult orElse(),
  }) {
    if (uploadImagesSuccess != null) {
      return uploadImagesSuccess(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostLoading value) loading,
    required TResult Function(PostError value) error,
    required TResult Function(PostCreatePostSuccess value) createPostSuccess,
    required TResult Function(PostUploadImagesSuccess value)
        uploadImagesSuccess,
  }) {
    return uploadImagesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostLoading value)? loading,
    TResult? Function(PostError value)? error,
    TResult? Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult? Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
  }) {
    return uploadImagesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostLoading value)? loading,
    TResult Function(PostError value)? error,
    TResult Function(PostCreatePostSuccess value)? createPostSuccess,
    TResult Function(PostUploadImagesSuccess value)? uploadImagesSuccess,
    required TResult orElse(),
  }) {
    if (uploadImagesSuccess != null) {
      return uploadImagesSuccess(this);
    }
    return orElse();
  }
}

abstract class PostUploadImagesSuccess implements PostState {
  const factory PostUploadImagesSuccess(final List<String> images) =
      _$PostUploadImagesSuccessImpl;

  List<String> get images;
  @JsonKey(ignore: true)
  _$$PostUploadImagesSuccessImplCopyWith<_$PostUploadImagesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
