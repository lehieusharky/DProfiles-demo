import 'dart:async';

import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education_model.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/navigation_step_create_digital_profile.dart';
import 'package:demo_dprofiles/src/utils/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
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
    on<UpdateUserInfo>(_updateUserInfo);
    on<GetUserInfo>(_getUserInfo);

    // certificate
    on<GetUserCertificates>(_getUserCertificates);
    on<AddUserCertificate>(_addUserCertificate);
    on<GetCertificateInfo>(_getCertificateInfo);
    on<DeleteUserCertificate>(_deleteCertificate);
    on<UpdateUserCertificate>(_updateCertificate);

    // education
    on<GetUserEducations>(_getUserEducations);
    on<AddUserEducation>(_addUserEducation);
    on<GetEducationInfo>(_getEducationInfo);
    on<DeleteUserEducation>(_deleteEducation);
    on<UpdateUserEducation>(_updateEducation);

    // experience
    on<GetUserExperiences>(_getUserExperiences);
    on<AddUserExperience>(_addUserExperience);
    on<GetExperienceInfo>(_getExperienceInfo);
    on<DeleteUserExperience>(_deleteExperience);
    on<UpdateUserExperience>(_updateExperience);

    add(const GetUserInfo());
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
    emit(const CreateDigitalProfileLoading());

    final result =
        await createDigitalProfileUseCase.addUserEducation(event.educationModel);

    result.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) => emit(AddUserEducationSuccess(r)),
    );
  }

  FutureOr<void> _updateUserInfo(
      UpdateUserInfo event, Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    final result =
        await createDigitalProfileUseCase.updateUserInfo(event.param);

    result.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) => emit(UpdateUserInfoSuccess(r)),
    );
  }

  FutureOr<void> _getUserInfo(
      GetUserInfo event, Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    final result = await createDigitalProfileUseCase.getUserInfo();

    result.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) => emit(GetUserInfoSuccess(r)),
    );
  }

  FutureOr<void> _getUserCertificates(GetUserCertificates event,
      Emitter<CreateDigitalProfileState> emit) async {
    final result = await createDigitalProfileUseCase.getUserCertificates();

    result.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) => emit(GetUserCertificatesSuccess(r)),
    );
  }

  FutureOr<void> _addUserCertificate(
      AddUserCertificate event, Emitter<CreateDigitalProfileState> emit) async {
    final result =
        await createDigitalProfileUseCase.addUserCertificate(event.certificateModel);

    result.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) => emit(AddUserCertificateSuccess(r)),
    );
  }

  FutureOr<void> _getCertificateInfo(
      GetCertificateInfo event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _deleteCertificate(
      DeleteUserCertificate event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _updateCertificate(
      UpdateUserCertificate event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _getUserEducations(
      GetUserEducations event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _getEducationInfo(
      GetEducationInfo event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _deleteEducation(
      DeleteUserEducation event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _updateEducation(
      UpdateUserEducation event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _getUserExperiences(
      GetUserExperiences event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _addUserExperience(
      AddUserExperience event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _getExperienceInfo(
      GetExperienceInfo event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _deleteExperience(
      DeleteUserExperience event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _updateExperience(
      UpdateUserExperience event, Emitter<CreateDigitalProfileState> emit) {}
}
