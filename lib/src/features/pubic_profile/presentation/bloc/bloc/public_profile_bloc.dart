import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_user_info_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/domain/usecases/public_profile_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_profile_event.dart';
part 'public_profile_state.dart';
part 'public_profile_bloc.freezed.dart';

class PublicProfileBloc extends Bloc<PublicProfileEvent, PublicProfileState> {
  final PublicProfileUseCase publicProfileUseCase;

  PublicProfileBloc(this.publicProfileUseCase) : super(const _Initial()) {
    on<PublicProfileGetBasicInfo>(_getUserInfo);
  }

  FutureOr<void> _getUserInfo(
      PublicProfileGetBasicInfo event, Emitter<PublicProfileState> emit) async {
    final result =
        await publicProfileUseCase.getPublicBasicInfo(event.userName);

    result.fold(
      (l) => emit(const PublicProfileError(
          title: 'Get user info failed', msg: 'Failed')),
      (r) => emit(PublicProfileGetBasicInfoSuccess(
          PublicUserInfoModel.fromJson(r.data))),
    );
  }
}
