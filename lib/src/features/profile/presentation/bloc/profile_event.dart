part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;

  const factory ProfileEvent.getUserinfo() = ProfileGetUserInfo;

  const factory ProfileEvent.getUserExperiences() = ProfileGetUserExperience;

  const factory ProfileEvent.getUserEducations() = ProfileGetUserEducations;

  const factory ProfileEvent.getUserCertificates() = ProfileGetUserCertificates;

  const factory ProfileEvent.getUserSkills(String name) = ProfileGetUserSkills;

  const factory ProfileEvent.getUserLanguages(int languageId) =
      ProfileGetUserLanguages;
}
