import 'dart:async';

import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_language_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_skill_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCase profileUseCase;
  final CreateDigitalProfileUseCase createDigitalProfileUseCase;

  ProfileBloc(this.profileUseCase, this.createDigitalProfileUseCase)
      : super(const ProfileState.initial()) {
    on<ProfileGetUserInfo>(_getUserInfo);

    on<ProfileGetUserCertificates>(_getUserCertificates);
    on<ProfileGetUserEducations>(_getUserEducations);
    on<ProfileGetUserExperience>(_getUserExperiences);
    on<ProfileGetUserLanguages>(_getLanguages);
    on<ProfileGetUserSkills>(_getSkills);
    on<ProfileUploadAvatar>(_uploadAvatar);
    on<ProfileCheckDigitalProfileAvailable>(_checkDigitalProfileAvailable);
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

  FutureOr<void> _getLanguages(
      ProfileGetUserLanguages event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result = await profileUseCase.getUserLanguage();

    result.fold(
        (l) => emit(
            ProfileError(message: l, title: 'Get user experience  failed')),
        (r) {
      final data = r.data as List;

      final languages = data.map((e) => UserLanguageModel.fromJson(e)).toList();

      emit(ProfileGetUserLanguagesSuccess(languages));
    });
  }

  FutureOr<void> _getSkills(
      ProfileGetUserSkills event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final result = await profileUseCase.getUserSkills();

    result.fold(
        (l) => emit(
            ProfileError(message: l, title: 'Get user experience  failed')),
        (r) {
      final data = r.data as List;

      final skills = data.map((e) => UserSkillModel.fromJson(e)).toList();

      emit(ProfileGetUserSkillsSuccess(skills));
    });
  }

  FutureOr<void> _uploadAvatar(
      ProfileUploadAvatar event, Emitter<ProfileState> emit) async {
    final result = await profileUseCase.uploadImage();

    result.fold(
        (l) => emit(ProfileError(message: l, title: 'Upload avatar failed')),
        (r) => emit(ProfileUploadAvatarSuccess(r)));
  }

  FutureOr<void> _checkDigitalProfileAvailable(
      ProfileCheckDigitalProfileAvailable event,
      Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final status =
        await createDigitalProfileUseCase.checkDigitalProfileIsAvailable();

    status.fold(
      (l) => emit(const ProfileCheckDigitalProfileAvailableSuccess(false)),
      (r) => emit(ProfileCheckDigitalProfileAvailableSuccess(
          r.data != null ? true : false)),
    );
  }
}
