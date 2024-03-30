import 'dart:async';

import 'package:demo_dprofiles/src/features/AI/create_digital_profile/widgets/navigation_step_create_digital_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_digital_profile_event.dart';
part 'create_digital_profile_state.dart';
part 'create_digital_profile_bloc.freezed.dart';

class CreateDigitalProfileBloc
    extends Bloc<CreateDigitalProfileEvent, CreateDigitalProfileState> {
  int currentStep = CreateDigitalProfileStep.basicInfo.position;

  CreateDigitalProfileBloc()
      : super(const CreateDigitalProfileState.initial()) {
    on<ChangeCreationStep>(_changeCreateStep);
  }

  FutureOr<void> _changeCreateStep(
      ChangeCreationStep event, Emitter<CreateDigitalProfileState> emit) {
    try {
      emit(const CreateDigitalProfileLoading());
      event.isNext ? currentStep++ : currentStep--;
      emit(ChangeCreationStepSuccess(currentStep));
    } catch (e) {
      emit(const CreateDigitalProfileError(
          message: "Change creation's step failed"));
    }
  }
}
