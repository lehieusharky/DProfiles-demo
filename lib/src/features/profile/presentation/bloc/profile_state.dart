part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.error(
      {required String message, required String title}) = ProfileError;

  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.getUserInfoSuccess(UserInfoModel userInfoModel) =
      ProfileGetUserInfoSuccess;

  const factory ProfileState.getUserExperiencesSuccess(
      List<ExperienceModel> experiences) = ProfileGetUserExperienceSuccess;

  const factory ProfileState.getUserEducationsSuccess(
      List<EducationModel> educations) = ProfileGetUserEducationsSuccess;

  const factory ProfileState.getUserCertificatesSuccess(
      List<CertificateModel> certificates) = ProfileGetUserCertificatesSuccess;

  const factory ProfileState.getUserSkills(List<UserSkillModel> skillModels) =
      ProfileGetUserSkillsSuccess;

  const factory ProfileState.getUserLanguages(
      List<UserLanguageModel> languages) = ProfileGetUserLanguagesSuccess;

  const factory ProfileState.uploadAvatarSuccess(
      UploadFileResponse? uploadImageResponse) = ProfileUploadAvatarSuccess;

  const factory ProfileState.checkDigitalProfileAvailableSuccess(bool status) =
      ProfileCheckDigitalProfileAvailableSuccess;

  const factory ProfileState.getMetaLanguageSuccess(
      List<MetaLanguageModel> languages) = ProfileGetMetaLanguageSuccess;

  const factory ProfileState.deleteEducationSuccess(int id) =
      ProfileDeleteEducationSuccess;

  const factory ProfileState.deleteCertificateSuccess(int id) =
      ProfileDeleteCertificateSuccess;

  const factory ProfileState.deleteExperienceSuccess(int id) =
      ProfileDeleteExperienceSuccess;

  const factory ProfileState.updateUserExperiencesSuccess(
      ExperienceModel experienceModel) = ProfileUpdateUserExperienceSuccess;

  const factory ProfileState.updateUserEducationSuccess(
      EducationModel educationModel) = ProfileUpdateUserEducationSuccess;

  const factory ProfileState.updateUserCertificateSuccess(
      CertificateModel certificateModel) = ProfileUpdateUserCertificateSuccess;

  const factory ProfileState.updateUserInfoSuccess() =
      ProfileUpdateUserInfoSuccess;

  const factory ProfileState.getUserPostsSuccess(List<PostModel> posts) =
      ProfileGetUserPostsSuccess;
}
