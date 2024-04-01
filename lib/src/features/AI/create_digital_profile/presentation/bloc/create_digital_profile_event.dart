part of 'create_digital_profile_bloc.dart';

@freezed
class CreateDigitalProfileEvent with _$CreateDigitalProfileEvent {
  const factory CreateDigitalProfileEvent.started() = _Started;

  const factory CreateDigitalProfileEvent.changeCreationStep(
      {required bool isNext}) = ChangeCreationStep;

  const factory CreateDigitalProfileEvent.updateUserInfo(UserInfoModel param) =
      UpdateUserInfo;

  const factory CreateDigitalProfileEvent.getUserInfo() = GetUserInfo;

  // certificate

  const factory CreateDigitalProfileEvent.getUserCertificates() =
      GetUserCertificates;

  const factory CreateDigitalProfileEvent.addUserCertificates(
      CertificateModel certificateModel) = AddUserCertificate;

  const factory CreateDigitalProfileEvent.getCertificateInfo(String id) =
      GetCertificateInfo;

  const factory CreateDigitalProfileEvent.deleteUserCertificate(
      CertificateModel certificateModel) = DeleteUserCertificate;

  const factory CreateDigitalProfileEvent.updateUserCertificate(
      String id, CertificateModel certificateModel) = UpdateUserCertificate;

  // education

  const factory CreateDigitalProfileEvent.getUserEducations() =
      GetUserEducations;

  const factory CreateDigitalProfileEvent.addUserEducations(
      EducationModel educationModel) = AddUserEducation;

  const factory CreateDigitalProfileEvent.getEducationInfo(String id) =
      GetEducationInfo;

  const factory CreateDigitalProfileEvent.deleteUserEducation(
      EducationModel ed) = DeleteUserEducation;

  const factory CreateDigitalProfileEvent.updateUserEducation(
      String id, EducationModel educationModel) = UpdateUserEducation;

  // experience

  const factory CreateDigitalProfileEvent.getUserExperiences() =
      GetUserExperiences;

  const factory CreateDigitalProfileEvent.addUserExperiences(
      ExperienceModel experienceModel) = AddUserExperience;

  const factory CreateDigitalProfileEvent.getExperienceInfo(String id) =
      GetExperienceInfo;

  const factory CreateDigitalProfileEvent.deleteUserExperience(
      ExperienceModel experienceModel) = DeleteUserExperience;

  const factory CreateDigitalProfileEvent.updateUserExperience(
      String id, ExperienceModel experienceModel) = UpdateUserExperience;

  const factory CreateDigitalProfileEvent.saveUpdatedProfile() =
      SaveUpdatedProfile;
}
