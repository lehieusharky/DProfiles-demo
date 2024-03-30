part of 'create_digital_profile_bloc.dart';

@freezed
class CreateDigitalProfileEvent with _$CreateDigitalProfileEvent {
  const factory CreateDigitalProfileEvent.started() = _Started;

  const factory CreateDigitalProfileEvent.changeCreationStep(
      {required bool isNext}) = ChangeCreationStep;

  const factory CreateDigitalProfileEvent.addUserEducation(
      AddUserEducationModel param) = AddUserEducation;

  const factory CreateDigitalProfileEvent.updateUserInfo(UserInfoModel param) =
      UpdateUserInfo;

  const factory CreateDigitalProfileEvent.getUserInfo() = GetUserInfo;
}
