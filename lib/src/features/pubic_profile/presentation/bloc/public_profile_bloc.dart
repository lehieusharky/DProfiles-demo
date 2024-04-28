import 'dart:async';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_user_info_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/domain/usecases/public_profile_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_profile_event.dart';
part 'public_profile_state.dart';
part 'public_profile_bloc.freezed.dart';

class PublicProfileBloc extends Bloc<PublicProfileEvent, PublicProfileState> {
  final PublicProfileUseCase publicProfileUseCase;

  PublicProfileBloc(this.publicProfileUseCase) : super(const _Initial()) {
    on<PublicProfileGetBasicInfo>(_getUserInfo);
    on<PublicProfileGetEducation>(_getEducations);
    on<PublicProfileGetExperiences>(_getExperiences);
    on<PublicProfileGetCertificates>(_getCertificates);

    
  }

  FutureOr<void> _getUserInfo(
      PublicProfileGetBasicInfo event, Emitter<PublicProfileState> emit) async {
    final result =
        await publicProfileUseCase.getPublicBasicInfo(event.userName);

    result.fold(
      (l) => emit(const PublicProfileError(
          title: 'Get user info failed', msg: 'Failed')),
      (r) => emit(PublicProfileGetBasicInfoSuccess(
          PublicUserInfoModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _getEducations(
      PublicProfileGetEducation event, Emitter<PublicProfileState> emit) async {
    emit(const PublicProfileLoading());
    final result = await publicProfileUseCase.getEducations(event.userName);

    result.fold(
        (l) => emit(
            PublicProfileError(msg: l, title: 'Get user education  failed')),
        (r) {
      final data = r.data as List;

      final educations = data.map((e) => EducationModel.fromJson(e)).toList();

      emit(PublicProfileGetUserEducationsSuccess(educations));
    });
  }

  FutureOr<void> _getExperiences(PublicProfileGetExperiences event,
      Emitter<PublicProfileState> emit) async {
    emit(const PublicProfileLoading());
    final result = await publicProfileUseCase.getExperiences(event.userName);

    result.fold(
        (l) => emit(
            PublicProfileError(msg: l, title: 'Get user experience  failed')),
        (r) {
      final data = r.data as List;

      final experiences = data.map((e) => ExperienceModel.fromJson(e)).toList();

      emit(PublicProfileGetUserExperienceSuccess(experiences));
    });
  }

  FutureOr<void> _getCertificates(PublicProfileGetCertificates event,
      Emitter<PublicProfileState> emit) async {
    emit(const PublicProfileLoading());
    final result = await publicProfileUseCase.getCertificates(event.userName);

    result.fold(
        (l) => emit(
            PublicProfileError(msg: l, title: 'Get user certificates  failed')),
        (r) {
      final data = r.data as List;

      final certificates =
          data.map((e) => CertificateModel.fromJson(e)).toList();

      emit(PublicProfileGetUserCertificatesSuccess(certificates));
    });
  }
}
