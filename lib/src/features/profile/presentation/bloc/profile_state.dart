part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.error(
      {required String message, required String title}) = ProfileError;

  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.getUserInfoSuccess(UserInfoModel userInfoModel) =
      ProfileGetUserInfoSuccess;

  const factory ProfileState.addNewEducationSuccess(
      EducationModel educationModel) = ProfileAddNewEducationSuccess;

  const factory ProfileState.addNewExperienceSuccess(
      ExperienceModel experienceModel) = ProfileAddNewExperienceSuccess;

  const factory ProfileState.addNewCertificateSuccess(
      CertificateModel certificateModel) = ProfileAddNewCertificateSuccess;
}
