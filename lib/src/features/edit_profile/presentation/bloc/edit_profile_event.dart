part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.addNewEducation(
      EducationModel educationModel) = EditProfileAddNewEducation;

  const factory EditProfileEvent.addNewExperience(
      ExperienceModel experienceModel) = EditProfileAddNewExperience;

  const factory EditProfileEvent.addNewCertificate(
      CertificateModel certificateModel) = EditProfileAddNewCertificate;

  const factory EditProfileEvent.updateUserInfo(UserInfoModel userInfoModel) =
      EditProfileUpdateUserInfo;

  const factory EditProfileEvent.getUserinfo() = EditProfileGetUserInfo;
}
