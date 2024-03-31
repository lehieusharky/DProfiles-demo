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

  const factory CreateDigitalProfileState.updateUserInfoSuccess(
      BaseResponse response) = UpdateUserInfoSuccess;

  const factory CreateDigitalProfileState.getUserInfoSuccess(
      BaseResponse response) = GetUserInfoSuccess;

  // certificate

  const factory CreateDigitalProfileState.getUserCertificatesSuccess(
      BaseResponse response) = GetUserCertificatesSuccess;

  const factory CreateDigitalProfileState.addUserCertificatesSuccess(
      BaseResponse response) = AddUserCertificateSuccess;

  const factory CreateDigitalProfileState.getCertificateInfoSuccess(
      BaseResponse response) = GetCertificateInfoSuccess;

  const factory CreateDigitalProfileState.deleteUserCertificateSuccess(
      BaseResponse response) = DeleteUserCertificateSuccess;

  const factory CreateDigitalProfileState.updateUserCertificateSuccess(
      BaseResponse response) = UpdateUserCertificateSuccess;

  // education

  const factory CreateDigitalProfileState.getUserEducationsSuccess(
      BaseResponse response) = GetUserEducationsSuccess;

  const factory CreateDigitalProfileState.addUserEducationsSuccess(
      BaseResponse response) = AddUserEducationSuccess;

  const factory CreateDigitalProfileState.getEducationInfoSuccess(
      BaseResponse response) = GetEducationInfoSuccess;

  const factory CreateDigitalProfileState.deleteUserEducationSuccess(
      BaseResponse response) = DeleteUserEducationSuccess;

  const factory CreateDigitalProfileState.updateUserEducationSuccess(
      BaseResponse response) = UpdateUserEducationSuccess;

  // experience

  const factory CreateDigitalProfileState.getUserExperiencesSuccess(
      BaseResponse response) = GetUserExperiencesSuccess;

  const factory CreateDigitalProfileState.addUserExperiencesSuccess(
      BaseResponse response) = AddUserExperienceSuccess;

  const factory CreateDigitalProfileState.getExperienceInfoSuccess(
      BaseResponse response) = GetExperienceInfoSuccess;

  const factory CreateDigitalProfileState.deleteUserExperienceSuccess(
      BaseResponse response) = DeleteUserExperienceSuccess;

  const factory CreateDigitalProfileState.updateUserExperienceSuccess(
      BaseResponse response) = UpdateUserExperienceSuccess;
}
