part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;

  const factory ProfileEvent.getUserinfo() = ProfileGetUserInfo;

  const factory ProfileEvent.getUserExperiences() = ProfileGetUserExperience;

  const factory ProfileEvent.getUserEducations() = ProfileGetUserEducations;

  const factory ProfileEvent.getUserCertificates() = ProfileGetUserCertificates;

  const factory ProfileEvent.getUserSkills() = ProfileGetUserSkills;

  const factory ProfileEvent.getUserLanguages() = ProfileGetUserLanguages;

  const factory ProfileEvent.uploadAvatar() = ProfileUploadAvatar;

  const factory ProfileEvent.checkDigitalProfileAvailable() =
      ProfileCheckDigitalProfileAvailable;

  const factory ProfileEvent.getMetaLanguage({String? search}) =
      ProfileGetMetaLanguage;

  const factory ProfileEvent.deleteEducation(int id) = ProfileDeleteEducation;

  const factory ProfileEvent.deleteCertificate(int id) =
      ProfileDeleteCertificate;

  const factory ProfileEvent.deleteExperience(int id) = ProfileDeleteExperience;

  const factory ProfileEvent.updateUserExperience(
      ExperienceModel experienceModel) = ProfileUpdateUserExperience;

  const factory ProfileEvent.updateUserEducation(
      EducationModel educationModel) = ProfileUpdateUserEducation;

  const factory ProfileEvent.updateUserCertificate(
      CertificateModel certificateModel) = ProfileUpdateUserCertificate;

  const factory ProfileEvent.updateUserInfo(UserInfoModel userInfoModel) =
      ProfileUpdateUserInfo;

  const factory ProfileEvent.getUserPosts() =
      ProfileGetUserPosts;
}
