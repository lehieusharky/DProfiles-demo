import 'dart:async';

import 'package:demo_dprofiles/src/features/edit_profile/domain/usecases/edit_profile_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final EditProfileUseCase editProfileUseCase;

  final ProfileUseCase profileUseCase;

  EditProfileBloc(this.editProfileUseCase, this.profileUseCase)
      : super(const EditProfileState.initial()) {
    on<EditProfileAddNewEducation>(_addNewEducation);
    on<EditProfileAddNewCertificate>(_addNewCertificate);
    on<EditProfileAddNewExperience>(_addNewExperience);
    on<EditProfileUpdateUserInfo>(_updateUserInfo);
  }

  FutureOr<void> _addNewEducation(
      EditProfileAddNewEducation event, Emitter<EditProfileState> emit) async {
    emit(const EditProfileLoading());
    final result =
        await editProfileUseCase.addNewEducation(event.educationModel);

    result.fold(
      (l) => emit(EditProfileError(
          message: l.map((e) => e).toString(),
          title: 'Add new education failed')),
      (r) => emit(
          EditProfileAddNewEducationSuccess(EducationModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _addNewCertificate(EditProfileAddNewCertificate event,
      Emitter<EditProfileState> emit) async {
    emit(const EditProfileLoading());
    final result =
        await editProfileUseCase.addNewCertificate(event.certificateModel);

    result.fold(
      (l) => emit(EditProfileError(
          message: l.map((e) => e).toString(),
          title: 'Add new certificate failed')),
      (r) => emit(EditProfileAddNewCertificateSuccess(
          CertificateModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _addNewExperience(
      EditProfileAddNewExperience event, Emitter<EditProfileState> emit) async {
    emit(const EditProfileLoading());
    final result =
        await editProfileUseCase.addNewExperience(event.experienceModel);

    result.fold(
      (l) => emit(EditProfileError(
          message: l.map((e) => e).toString(),
          title: 'Add new experience failed')),
      (r) => emit(
          EditProfileAddNewExperienceSuccess(ExperienceModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _updateUserInfo(
      EditProfileUpdateUserInfo event, Emitter<EditProfileState> emit) async {
    emit(const EditProfileLoading());
    final result = await editProfileUseCase.updateUserInfo(event.userInfoModel);

    result.fold(
      (l) => emit(EditProfileError(
          message: l.map((e) => e).toString(),
          title: 'Update user info  failed')),
      (r) => emit(const EditProfileUpdateUserInfoSuccess()),
    );
  }
}
