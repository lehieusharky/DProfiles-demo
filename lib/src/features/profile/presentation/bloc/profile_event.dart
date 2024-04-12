part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;

  const factory ProfileEvent.getUserinfo() = ProfileGetUserInfo;

  const factory ProfileEvent.addNewEducation(EducationModel educationModel) =
      ProfileAddNewEducation;

  const factory ProfileEvent.addNewExperience(ExperienceModel experienceModel) =
      ProfileAddNewExperience;

  const factory ProfileEvent.addNewCertificate(
      CertificateModel certificateModel) = ProfileAddNewCertificate;
}
