import 'dart:async';

import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_skill_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCase profileUseCase;

  ProfileBloc(this.profileUseCase) : super(const ProfileState.initial()) {
    on<ProfileGetUserInfo>(_getUserInfo);

    on<ProfileGetUserCertificates>(_getUserCertificates);
    on<ProfileGetUserEducations>(_getUserEducations);
    on<ProfileGetUserExperience>(_getUserExperiences);

  }

  Future<void> _getUserInfo(
      ProfileGetUserInfo event, Emitter<ProfileState> emit) async {
    final result = await profileUseCase.getUserInfo();

    result.fold(
      (l) => emit(ProfileError(
          message: l.map((e) => e).toString(), title: 'Get user info failed')),
      (r) => emit(ProfileGetUserInfoSuccess(UserInfoModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _getUserCertificates(
      ProfileGetUserCertificates event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result = await profileUseCase.getUserCertificates();

    result.fold(
        (l) => emit(ProfileError(
            message: l.map((e) => e).toString(),
            title: 'Get user certificates  failed')), (r) {
      final data = r.data as List;

      final certificates =
          data.map((e) => CertificateModel.fromJson(e)).toList();

      emit(ProfileGetUserCertificatesSuccess(certificates));
    });
  }

  FutureOr<void> _getUserEducations(
      ProfileGetUserEducations event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result = await profileUseCase.getUserEducations();

    result.fold(
        (l) => emit(ProfileError(
            message: l.map((e) => e).toString(),
            title: 'Get user education  failed')), (r) {
      final data = r.data as List;

      final educations = data.map((e) => EducationModel.fromJson(e)).toList();

      emit(ProfileGetUserEducationsSuccess(educations));
    });
  }

  FutureOr<void> _getUserExperiences(
      ProfileGetUserExperience event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result = await profileUseCase.getUserExperiences();
    result.fold(
        (l) => emit(ProfileError(
            message: l.map((e) => e).toString(),
            title: 'Get user experience  failed')), (r) {
      final data = r.data as List;

      final experiences = data.map((e) => ExperienceModel.fromJson(e)).toList();

      emit(ProfileGetUserExperienceSuccess(experiences));
    });
  }
}
