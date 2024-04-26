part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = _Initial;

  const factory EditProfileState.error(
      {required String message, required String title}) = EditProfileError;

  const factory EditProfileState.loading() = EditProfileLoading;

  const factory EditProfileState.getUserInfoSuccess(
      UserInfoModel userInfoModel) = EditProfileGetUserInfoSuccess;

  const factory EditProfileState.addNewEducationSuccess(
      EducationModel educationModel) = EditProfileAddNewEducationSuccess;

  const factory EditProfileState.addNewExperienceSuccess(
      ExperienceModel experienceModel) = EditProfileAddNewExperienceSuccess;

  const factory EditProfileState.addNewCertificateSuccess(
      CertificateModel certificateModel) = EditProfileAddNewCertificateSuccess;

  const factory EditProfileState.updateUserInfoSuccess() =
      EditProfileUpdateUserInfoSuccess;

  const factory EditProfileState.addNewSkillSuccess(UserSkillModel skillModel) =
      EditProfileAddNewSkillSuccess;

  const factory EditProfileState.addNewLanguageSuccess(
      UserLanguageModel languageModel) = EditProfileAddNewLanguageSuccess;

  const factory EditProfileState.getMetaLanguageSuccess(
      List<MetaLanguageModel> languages) = EditProfileGetMetaLanguageSuccess;
}
