import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart';
import 'package:demo_dprofiles/src/features/edit_profile/domain/usecases/edit_profile_usecase.dart';
import 'package:demo_dprofiles/src/features/post/data/models/post_model.dart';
import 'package:demo_dprofiles/src/features/post/domain/usecases/post_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/banner_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_language_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_skill_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:demo_dprofiles/src/utils/data/models/meta_language_model.dart';
import 'package:demo_dprofiles/src/utils/domain/usecases/file_usecase.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCase profileUseCase;
  final CreateDigitalProfileUseCase createDigitalProfileUseCase;
  final FileUseCase fileUseCase;
  final EditProfileUseCase editProfileUseCase;
  final PostUseCase postUseCase;

  ProfileBloc(
    this.profileUseCase,
    this.createDigitalProfileUseCase,
    this.fileUseCase,
    this.editProfileUseCase,
    this.postUseCase,
  ) : super(const ProfileState.initial()) {
    on<ProfileGetUserInfo>(_getUserInfo);
    on<ProfileUpdateUserInfo>(_updateUserInfo);

    on<ProfileGetUserCertificates>(_getUserCertificates);
    on<ProfileGetUserEducations>(_getUserEducations);
    on<ProfileGetUserExperience>(_getUserExperiences);
    on<ProfileGetUserLanguages>(_getLanguages);
    on<ProfileGetUserSkills>(_getSkills);
    on<ProfileUploadAvatar>(_uploadAvatar);
    on<ProfileUploadBanner>(_uploadBanner);
    on<ProfileUpdateBanner>(_updateBanner);
    on<ProfileGetBanner>(_getBanner);
    on<ProfileCheckDigitalProfileAvailable>(_checkDigitalProfileAvailable);
    on<ProfileGetMetaLanguage>(_getMetaLanguage);

    on<ProfileDeleteCertificate>(_deleteCertificate);
    on<ProfileDeleteEducation>(_deleteEducation);
    on<ProfileDeleteExperience>(_deleteExperience);

    on<ProfileUpdateUserExperience>(_updateExperience);
    on<ProfileUpdateUserEducation>(_updateEducation);
    on<ProfileUpdateUserCertificate>(_updateCertificate);

    on<ProfileGetUserPosts>(_getUserPosts);
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
    final result = await fileUseCase.uploadImage();

    result.fold(
        (l) => emit(ProfileError(message: l, title: 'Upload avatar failed')),
        (r) => emit(ProfileUploadAvatarSuccess(r)));
  }

  FutureOr<void> _uploadBanner(
      ProfileUploadBanner event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());

    final result = await fileUseCase.uploadImage();

    result.fold(
        (l) => emit(ProfileError(message: l, title: 'Upload image failed')),
        (r) => emit(ProfilUploadBannerSuccess(r!.objectKey!)));
  }

  FutureOr<void> _updateBanner(
      ProfileUpdateBanner event, Emitter<ProfileState> emit) async {
    final postResult = await profileUseCase.postBanner(event.bannerUrlKey);

    postResult.fold(
      (l1) => emit(ProfileError(message: l1, title: 'Upload banner failed')),
      (r2) => emit(ProfileUpdateBannerSuccess(BannerModel.fromJson(r2.data))),
    );
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

  FutureOr<void> _getMetaLanguage(
      ProfileGetMetaLanguage event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());

    final status = await profileUseCase.getMetaLanguage();

    status.fold(
        (l) => emit(const ProfileError(
            message: 'Get meta language failed', title: 'Failed')), (r) {
      final data = r.data as List;

      final languages = data.map((e) => MetaLanguageModel.fromJson(e)).toList();

      emit(ProfileGetMetaLanguageSuccess(languages));
    });
  }

  FutureOr<void> _deleteCertificate(
      ProfileDeleteCertificate event, Emitter<ProfileState> emit) async {
    emit(const _Initial());
    final status = await profileUseCase.deleteUserCertificate(event.id);

    status.fold(
        (l) => emit(
            const ProfileError(message: 'Delete  failed', title: 'Failed')),
        (r) => emit(ProfileDeleteCertificateSuccess(event.id)));
  }

  FutureOr<void> _deleteEducation(
      ProfileDeleteEducation event, Emitter<ProfileState> emit) async {
    emit(const _Initial());
    final status = await profileUseCase.deleteUserEducation(event.id);

    status.fold(
        (l) => emit(
            const ProfileError(message: 'Delete  failed', title: 'Failed')),
        (r) => emit(ProfileDeleteEducationSuccess(event.id)));
  }

  FutureOr<void> _deleteExperience(
      ProfileDeleteExperience event, Emitter<ProfileState> emit) async {
    emit(const _Initial());
    final status = await profileUseCase.deleteUserExperience(event.id);

    status.fold(
        (l) => emit(
            const ProfileError(message: 'Delete  failed', title: 'Failed')),
        (r) => emit(ProfileDeleteExperienceSuccess(event.id)));
  }

  FutureOr<void> _updateExperience(
      ProfileUpdateUserExperience event, Emitter<ProfileState> emit) async {
    emit(const _Initial());
    final status =
        await profileUseCase.updateUserExperience(event.experienceModel);

    status.fold(
        (l) => emit(
            const ProfileError(message: 'Delete  failed', title: 'Failed')),
        (r) => emit(ProfileUpdateUserExperienceSuccess(event.experienceModel)));
  }

  FutureOr<void> _updateEducation(
      ProfileUpdateUserEducation event, Emitter<ProfileState> emit) async {
    emit(const _Initial());
    final status =
        await profileUseCase.updateUserEducation(event.educationModel);

    status.fold(
        (l) => emit(
            const ProfileError(message: 'Delete  failed', title: 'Failed')),
        (r) => emit(ProfileUpdateUserEducationSuccess(event.educationModel)));
  }

  FutureOr<void> _updateCertificate(
      ProfileUpdateUserCertificate event, Emitter<ProfileState> emit) async {
    emit(const _Initial());
    final status =
        await profileUseCase.updateUserCertificate(event.certificateModel);

    status.fold(
        (l) => emit(
            const ProfileError(message: 'Delete  failed', title: 'Failed')),
        (r) =>
            emit(ProfileUpdateUserCertificateSuccess(event.certificateModel)));
  }

  FutureOr<void> _updateUserInfo(
      ProfileUpdateUserInfo event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final status = await editProfileUseCase.updateUserInfo(event.userInfoModel);

    status.fold(
        (l) => emit(
            const ProfileError(message: 'Delete  failed', title: 'Failed')),
        (r) => emit(const ProfileUpdateUserInfoSuccess()));
  }

  FutureOr<void> _getUserPosts(
      ProfileGetUserPosts event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final status = await postUseCase.getUserPosts();

    status.fold(
        (l) => emit(const ProfileError(
            message: 'get user post failed', title: 'Failed')), (r) {
      final data = r.data as List;
      final posts = data.map((e) => PostModel.fromJson(e)).toList();

      emit(ProfileGetUserPostsSuccess(posts));
    });
  }

  FutureOr<void> _getBanner(
      ProfileGetBanner event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    final status = await profileUseCase.getBanner();

    status.fold(
        (l) => emit(const ProfileError(
            message: 'get user banner failed', title: 'Failed')), (r) {
      final data = r.data as List;

      final banners = data.map((e) => BannerModel.fromJson(e)).toList();

      emit(ProfileGetBannerSuccess(banners.first));
    });
  }
}
