import 'dart:async';

import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/navigation_step_create_digital_profile.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_digital_profile_event.dart';
part 'create_digital_profile_state.dart';
part 'create_digital_profile_bloc.freezed.dart';

class CreateDigitalProfileBloc
    extends Bloc<CreateDigitalProfileEvent, CreateDigitalProfileState> {
  int _currentStep = CreateDigitalProfileStep.basicInfo.position;

  CreateDigitalProfileBloc()
      : super(const CreateDigitalProfileState.initial()) {
    on<ChangeCreationStep>(_changeCreateStep);

    on<AddUserEducation>(_addUserEducation);
  }

  FutureOr<void> _changeCreateStep(
      ChangeCreationStep event, Emitter<CreateDigitalProfileState> emit) {
    try {
      emit(const CreateDigitalProfileLoading());
      event.isNext ? _currentStep++ : _currentStep--;
      emit(ChangeCreationStepSuccess(_currentStep));
    } catch (e) {
      emit(const CreateDigitalProfileError(
          message: ["Change creation's step failed"]));
    }
  }

  FutureOr<void> _addUserEducation(
      AddUserEducation event, Emitter<CreateDigitalProfileState> emit) async {
    final result =
        await createDigitalProfileUseCase.addUserEducation(event.param);

    result.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) => emit(AddUserEducationSuccess(r)),
    );
  }
}
