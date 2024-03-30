part of 'create_digital_profile_bloc.dart';

@freezed
class CreateDigitalProfileEvent with _$CreateDigitalProfileEvent {
  const factory CreateDigitalProfileEvent.started() = _Started;

  const factory CreateDigitalProfileEvent.changeCreationStep({required bool isNext}) = ChangeCreationStep;
}
