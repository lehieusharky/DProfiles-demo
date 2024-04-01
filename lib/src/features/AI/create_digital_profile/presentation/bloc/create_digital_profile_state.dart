part of 'create_digital_profile_bloc.dart';

@freezed
class CreateDigitalProfileState with _$CreateDigitalProfileState {
  const factory CreateDigitalProfileState.initial() = _Initial;

  const factory CreateDigitalProfileState.loading() =
      CreateDigitalProfileLoading;

  const factory CreateDigitalProfileState.error(
      {required List<String> message,
      String? title}) = CreateDigitalProfileError;

  const factory CreateDigitalProfileState.changeCreationStepSuccess(
      int currentStep) = ChangeCreationStepSuccess;

  // user info

  const factory CreateDigitalProfileState.updateUserInfoSuccess(
      {BaseResponse? response}) = UpdateUserInfoSuccess;

  const factory CreateDigitalProfileState.getUserInfoSuccess(
      BaseResponse response) = GetUserInfoSuccess;

  // certificate

  const factory CreateDigitalProfileState.getUserCertificatesSuccess(
      BaseResponse response) = GetUserCertificatesSuccess;

  const factory CreateDigitalProfileState.addUserCertificatesSuccess() =
      AddUserCertificateSuccess;

  const factory CreateDigitalProfileState.getCertificateInfoSuccess(
      BaseResponse response) = GetCertificateInfoSuccess;

  const factory CreateDigitalProfileState.deleteUserCertificateSuccess() =
      DeleteUserCertificateSuccess;

  const factory CreateDigitalProfileState.updateUserCertificateSuccess(
      BaseResponse response) = UpdateUserCertificateSuccess;

  // education

  const factory CreateDigitalProfileState.getUserEducationsSuccess(
      List<EducationModel> educations) = GetUserEducationsSuccess;

  const factory CreateDigitalProfileState.addUserEducationsSuccess() =
      AddUserEducationSuccess;

  const factory CreateDigitalProfileState.getEducationInfoSuccess(
      BaseResponse response) = GetEducationInfoSuccess;

  const factory CreateDigitalProfileState.deleteUserEducationSuccess() =
      DeleteUserEducationSuccess;

  const factory CreateDigitalProfileState.updateUserEducationSuccess(
      BaseResponse response) = UpdateUserEducationSuccess;

  // experience

  const factory CreateDigitalProfileState.getUserExperiencesSuccess(
      BaseResponse response) = GetUserExperiencesSuccess;

  const factory CreateDigitalProfileState.addUserExperiencesSuccess() =
      AddUserExperienceSuccess;

  const factory CreateDigitalProfileState.getExperienceInfoSuccess(
      BaseResponse response) = GetExperienceInfoSuccess;

  const factory CreateDigitalProfileState.deleteUserExperienceSuccess() =
      DeleteUserExperienceSuccess;

  const factory CreateDigitalProfileState.updateUserExperienceSuccess(
      BaseResponse response) = UpdateUserExperienceSuccess;

  const factory CreateDigitalProfileState.saveUpdatedProfileSuccess() =
      SaveUpdatedProfileSuccess;
}
