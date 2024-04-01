import 'dart:async';
import 'dart:developer';

import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/digital_profile_model.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart';
import 'package:demo_dprofiles/src/utils/data/models/add_user_education_model.dart';
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
  int _currentStep = 0;

  int get currentStep => _currentStep;

  UserInfoModel userInfo = const UserInfoModel();

  List<EducationModel> educations = [];

  List<CertificateModel> certificates = [];

  List<ExperienceModel> experiences = [];

  CreateDigitalProfileBloc()
      : super(const CreateDigitalProfileState.initial()) {
    on<ChangeCreationStep>(_changeCreateStep);

    on<SaveUpdatedProfile>(_saveUpdatedProfile);

    // basic info

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

    add(const GetUserEducations());

    add(const GetUserCertificates());

    add(const GetUserExperiences());

    add(const ChangeCreationStep(isNext: true));
  }

  FutureOr<void> _changeCreateStep(
      ChangeCreationStep event, Emitter<CreateDigitalProfileState> emit) {
    try {
      emit(const CreateDigitalProfileLoading());

      event.isNext ? _currentStep++ : _currentStep--;

      log("current_step: $_currentStep");

      emit(ChangeCreationStepSuccess(_currentStep));
    } catch (e) {
      emit(const CreateDigitalProfileError(
          message: ["Change creation's step failed"]));
    }
  }

  FutureOr<void> _addUserEducation(
      AddUserEducation event, Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    try {
      educations.add(event.educationModel);

      emit(const AddUserEducationSuccess());
    } catch (e) {
      emit(CreateDigitalProfileError(
          message: [e.toString()], title: 'Add new education failed'));
    }
  }

  FutureOr<void> _updateUserInfo(
      UpdateUserInfo event, Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    try {
      userInfo = event.param;

      emit(const UpdateUserInfoSuccess());
    } catch (e) {
      emit(CreateDigitalProfileError(
          message: [e.toString()], title: 'Update basic information failed'));
    }
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

    result.fold((l) => emit(CreateDigitalProfileError(message: l)), (r) {
      certificates =
          (r.data as List).map((e) => CertificateModel.fromJson(e)).toList();

      emit(GetUserCertificatesSuccess(r));
    });
  }

  FutureOr<void> _addUserCertificate(
      AddUserCertificate event, Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    try {
      certificates.add(event.certificateModel);

      emit(const AddUserCertificateSuccess());
    } catch (e) {
      emit(CreateDigitalProfileError(
          message: [e.toString()], title: 'Add new education failed'));
    }
  }

  FutureOr<void> _getCertificateInfo(
      GetCertificateInfo event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _deleteCertificate(DeleteUserCertificate event,
      Emitter<CreateDigitalProfileState> emit) async {
    try {
      certificates.remove(event.certificateModel);

      emit(const DeleteUserExperienceSuccess());
    } catch (e) {
      emit(CreateDigitalProfileError(
          message: [e.toString()], title: 'Delete certificate failed'));
    }
  }

  FutureOr<void> _updateCertificate(
      UpdateUserCertificate event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _getUserEducations(
      GetUserEducations event, Emitter<CreateDigitalProfileState> emit) async {
    final result = await createDigitalProfileUseCase.getUserEducations();

    result.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) {
        educations =
            (r.data as List).map((e) => EducationModel.fromJson(e)).toList();

        emit(GetUserEducationsSuccess(educations));
      },
    );
  }

  FutureOr<void> _getEducationInfo(
      GetEducationInfo event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _deleteEducation(DeleteUserEducation event,
      Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    try {
      educations.remove(event.ed);

      emit(const DeleteUserEducationSuccess());
    } catch (e) {
      emit(CreateDigitalProfileError(
          message: [e.toString()], title: 'Delete education failed'));
    }
  }

  FutureOr<void> _updateEducation(
      UpdateUserEducation event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _getUserExperiences(
      GetUserExperiences event, Emitter<CreateDigitalProfileState> emit) async {
    final result = await createDigitalProfileUseCase.getUserExperiences();

    result.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) {
        experiences =
            (r.data as List).map((e) => ExperienceModel.fromJson(e)).toList();

        emit(GetUserExperiencesSuccess(r));
      },
    );
  }

  FutureOr<void> _addUserExperience(
      AddUserExperience event, Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    try {
      experiences.add(event.experienceModel);

      emit(const AddUserExperienceSuccess());
    } catch (e) {
      emit(CreateDigitalProfileError(
          message: [e.toString()], title: 'Add new experience failed'));
    }
  }

  FutureOr<void> _getExperienceInfo(
      GetExperienceInfo event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _deleteExperience(DeleteUserExperience event,
      Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    try {
      experiences.remove(event.experienceModel);

      emit(const DeleteUserExperienceSuccess());
    } catch (e) {
      emit(CreateDigitalProfileError(
          message: [e.toString()], title: 'Delete experience failed'));
    }
  }

  FutureOr<void> _updateExperience(
      UpdateUserExperience event, Emitter<CreateDigitalProfileState> emit) {}

  FutureOr<void> _saveUpdatedProfile(
      SaveUpdatedProfile event, Emitter<CreateDigitalProfileState> emit) async {
    emit(const CreateDigitalProfileLoading());

    final getEducationsResult =
        await createDigitalProfileUseCase.getUserEducations();

    final getCertificatesResult =
        await createDigitalProfileUseCase.getUserCertificates();

    final getExperienesResult =
        await createDigitalProfileUseCase.getUserExperiences();

    final updateUserInfoResult =
        await createDigitalProfileUseCase.updateUserInfo(userInfo);

    updateUserInfoResult.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) => null,
    );

    getEducationsResult.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) async {
        final userEducations =
            (r.data as List).map((e) => EducationModel.fromJson(e)).toList();

        for (var element in userEducations) {
          await createDigitalProfileUseCase
              .deleteUserEducation(element.id.toString());
        }

        for (var element in educations) {
          await createDigitalProfileUseCase.addUserEducation(element);
        }
      },
    );

    getCertificatesResult.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) async {
        final userCertificates =
            (r.data as List).map((e) => CertificateModel.fromJson(e)).toList();

        for (var element in userCertificates) {
          await createDigitalProfileUseCase
              .deleteUserCertificate(element.id.toString());
        }

        for (var element in certificates) {
          await createDigitalProfileUseCase.addUserCertificate(element);
        }
      },
    );

    getExperienesResult.fold(
      (l) => emit(CreateDigitalProfileError(message: l)),
      (r) async {
        final userExperiences =
            (r.data as List).map((e) => ExperienceModel.fromJson(e)).toList();

        for (var element in userExperiences) {
          await createDigitalProfileUseCase
              .deleteUserExperience(element.id.toString());
        }

        for (var element in experiences) {
          await createDigitalProfileUseCase.addUserExperience(element);
        }
      },
    );

    emit(const SaveUpdatedProfileSuccess());
  }
}
