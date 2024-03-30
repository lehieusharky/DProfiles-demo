part of 'create_digital_profile_bloc.dart';

@freezed
class CreateDigitalProfileState with _$CreateDigitalProfileState {
  const factory CreateDigitalProfileState.initial() = _Initial;

  const factory CreateDigitalProfileState.changeCreationStepSuccess(
      int currentStep) = ChangeCreationStepSuccess;

  const factory CreateDigitalProfileState.loading() =
      CreateDigitalProfileLoading;

  const factory CreateDigitalProfileState.error(
      {required String message, String? title}) = CreateDigitalProfileError;
}
