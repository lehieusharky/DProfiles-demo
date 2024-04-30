import 'dart:async';

import 'package:demo_dprofiles/src/features/post/data/models/post_model.dart';
import 'package:demo_dprofiles/src/features/post/domain/usecases/post_usecase.dart';
import 'package:demo_dprofiles/src/utils/domain/usecases/file_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostUseCase postUseCase;
  final FileUseCase fileUseCase;

  PostBloc(this.postUseCase, this.fileUseCase) : super(const _Initial()) {
    on<PostUploadImages>(_uploadImages);
    on<PostCreatePost>(_createPost);
  }

  FutureOr<void> _uploadImages(
      PostUploadImages event, Emitter<PostState> emit) async {
    emit(const PostLoading());
    final status = await fileUseCase.uploadMultipleImages();

    status.fold(
        (l) => emit(
            const PostError(mesg: 'get user post failed', title: 'Failed')),
        (r) => emit(PostUploadImagesSuccess(r)));
  }

  FutureOr<void> _createPost(
      PostCreatePost event, Emitter<PostState> emit) async {
    emit(const PostLoading());
    final status = await postUseCase.post(
      userID: event.userID,
      content: event.content,
      imageUrl: event.imageUrl,
      videoUrl: event.videoUrl,
      adminID: event.adminID,
    );

    status.fold(
        (l) => emit(const PostError(mesg: 'post failed', title: 'Failed')),
        (r) => emit(PostCreatePostSuccess(PostModel.fromJson(r.data))));
  }
}
