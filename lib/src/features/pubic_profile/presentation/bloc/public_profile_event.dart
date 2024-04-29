part of 'public_profile_bloc.dart';

@freezed
class PublicProfileEvent with _$PublicProfileEvent {
  const factory PublicProfileEvent.getBasicInfo(String userName) =
      PublicProfileGetBasicInfo;

  const factory PublicProfileEvent.getEducations(String userName) =
      PublicProfileGetEducation;

  const factory PublicProfileEvent.getCertificates(String userName) =
      PublicProfileGetCertificates;

  const factory PublicProfileEvent.getExperiences(String userName) =
      PublicProfileGetExperiences;

  const factory PublicProfileEvent.getLanguages(String userName) =
      PublicProfileGetLanguages;

  const factory PublicProfileEvent.getSkills(String userName) =
      PublicProfileGetSkills;
}
