import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCase profileUseCase;

  ProfileBloc(this.profileUseCase) : super(const ProfileState.initial()) {
    on<ProfileGetUserInfo>(_getUserInfo);
    on<ProfileAddNewEducation>(_addNewEducation);
    on<ProfileAddNewCertificate>(_addNewCertificate);
    on<ProfileAddNewExperience>(_addNewExperience);

    add(const ProfileGetUserInfo());
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

  FutureOr<void> _addNewEducation(
      ProfileAddNewEducation event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result = await profileUseCase.addNewEducation(event.educationModel);

    result.fold(
      (l) => emit(ProfileError(
          message: l.map((e) => e).toString(),
          title: 'Add new education failed')),
      (r) =>
          emit(ProfileAddNewEducationSuccess(EducationModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _addNewCertificate(
      ProfileAddNewCertificate event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result =
        await profileUseCase.addNewCertificate(event.certificateModel);

    result.fold(
      (l) => emit(ProfileError(
          message: l.map((e) => e).toString(),
          title: 'Add new certificate failed')),
      (r) => emit(
          ProfileAddNewCertificateSuccess(CertificateModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _addNewExperience(
      ProfileAddNewExperience event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result = await profileUseCase.addNewExperience(event.experienceModel);

    result.fold(
      (l) => emit(ProfileError(
          message: l.map((e) => e).toString(),
          title: 'Add new experience failed')),
      (r) => emit(
          ProfileAddNewExperienceSuccess(ExperienceModel.fromJson(r.data))),
    );
  }
}
