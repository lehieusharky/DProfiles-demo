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
    on<ProfileUpdateUserInfo>(_updateUserInfo);

    on<ProfileGetUserCertificates>(_getUserCertificates);
    on<ProfileGetUserEducations>(_getUserEducations);
    on<ProfileGetUserExperience>(_getUserExperiences);

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

  FutureOr<void> _updateUserInfo(
      ProfileUpdateUserInfo event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result = await profileUseCase.updateUserInfo(event.userInfoModel);

    result.fold(
      (l) => emit(ProfileError(
          message: l.map((e) => e).toString(),
          title: 'Update user info  failed')),
      (r) => emit(const ProfileUpdateUserInfoSuccess()),
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
