part of 'public_profile_bloc.dart';

@freezed
class PublicProfileState with _$PublicProfileState {
  const factory PublicProfileState.initial() = _Initial;

  const factory PublicProfileState.loading() = PublicProfileLoading;

  const factory PublicProfileState.error(
      {required String title, required String msg}) = PublicProfileError;

  const factory PublicProfileState.getBasicInfoSuccess(
      PublicUserInfoModel userInfo) = PublicProfileGetBasicInfoSuccess;

  const factory PublicProfileState.getExperiencesSuccess(
          List<ExperienceModel> experiences) =
      PublicProfileGetUserExperienceSuccess;

  const factory PublicProfileState.getEducationsSuccess(
      List<EducationModel> educations) = PublicProfileGetUserEducationsSuccess;

  const factory PublicProfileState.getCertificatesSuccess(
          List<CertificateModel> certificates) =
      PublicProfileGetUserCertificatesSuccess;

  const factory PublicProfileState.getLanguagesSuccess(
      List<PublicLanguageModel> languages) = PublicProfileGetLanguagesSuccess;

  const factory PublicProfileState.getSkillsSuccess(
      List<PublicSkillModel> skills) = PublicProfileGetSkillsSuccess;

  const factory PublicProfileState.getBannerSuccess(BannerModel banner) =
      PublicProfileGetBannerSuccess;
}
