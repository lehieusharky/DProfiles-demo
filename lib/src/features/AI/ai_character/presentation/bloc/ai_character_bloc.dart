import 'dart:async';

import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/create_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/property_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/domain/usecase/ai_character_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_character_event.dart';
part 'ai_character_state.dart';
part 'ai_character_bloc.freezed.dart';

class AiCharacterBloc extends Bloc<AiCharacterEvent, AiCharacterState> {
  final AICharacterUseCase aiCharacterUseCase;
  final ProfileUseCase profileUseCase;

  int _currentStep = 0;

  List<EducationModel> educations = [];

  List<CertificateModel> certificates = [];

  List<ExperienceModel> experiences = [];

  int get currentStep => _currentStep;

  PropertyAICharacterModel propertyAICharacterModel =
      const PropertyAICharacterModel();

  AiCharacterBloc(this.aiCharacterUseCase, this.profileUseCase)
      : super(const AiCharacterState.initial()) {
    on<AICharacterChangeCreationStep>(_changeCreateStep);

    on<AddBasicInfoOfCharacterBot>(_addBasicInfoOfBot);

    on<AICharacterGetUserInfo>(_getUserInfo);
    on<AICharacterGetUserCertificates>(_getCertificates);
    on<AICharacterGetUserEducations>(_getEducations);
    on<AICharacterGetUserExperiences>(_getExperiences);

    on<GenerateCharacterBot>(_generateCharacterBot);
    on<GetListCharacterBot>(_getListCharacterBot);

    add(const AICharacterChangeCreationStep(isNext: true));

    add(const AICharacterGetUserCertificates());
    add(const AICharacterGetUserEducations());
    add(const AICharacterGetUserExperiences());
  }

  FutureOr<void> _changeCreateStep(
      AICharacterChangeCreationStep event, Emitter<AiCharacterState> emit) {
    try {
      event.isNext ? _currentStep++ : _currentStep--;

      emit(AICharacterChangeCreationStepSuccess(_currentStep));
    } catch (e) {
      emit(const AICharacterError(message: ["Change creation's step failed"]));
    }
  }

  FutureOr<void> _getUserInfo(
      AICharacterGetUserInfo event, Emitter<AiCharacterState> emit) async {
    final result = await profileUseCase.getUserInfo();

    result.fold(
      (l) => emit(AICharacterError(message: l, title: 'Get user info failed')),
      (r) =>
          emit(AICharacterGetUserInfoSuccess(UserInfoModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _generateCharacterBot(
      GenerateCharacterBot event, Emitter<AiCharacterState> emit) async {
    emit(const AICharacterLoading());
    final result =
        await aiCharacterUseCase.generateCharacterBot(propertyAICharacterModel);

    result.fold(
      (l) => emit(AICharacterError(
          message: [l], title: 'Generate character bot failed')),
      (r) => emit(GenerateCharacterBotSuccess(
          CreatedCharacterBotModel.fromJson(r.data))),
    );
  }

  FutureOr<void> _getListCharacterBot(
      GetListCharacterBot event, Emitter<AiCharacterState> emit) async {
    final result = await aiCharacterUseCase.getListCharacterBot();

    result.fold(
        (l) => emit(AICharacterError(
            message: [l], title: 'Get list character bot failed')), (r) {
      final listData = r.data as List;
      final characterBots =
          listData.map((e) => AICharacterBotModel.fromJson(e)).toList();

      emit(GetListCharacterBotSuccess(characterBots));
    });
  }

  FutureOr<void> _getCertificates(AICharacterGetUserCertificates event,
      Emitter<AiCharacterState> emit) async {
    final result = await profileUseCase.getUserCertificates();

    result.fold(
        (l) => emit(
            AICharacterError(message: l, title: 'Get certificates failed')),
        (r) {
      final listData = r.data as List;
      certificates = listData.map((e) => CertificateModel.fromJson(e)).toList();

      emit(AICharacterGetUserCertificatesSuccess(certificates));
    });
  }

  FutureOr<void> _getEducations(AICharacterGetUserEducations event,
      Emitter<AiCharacterState> emit) async {
    final result = await profileUseCase.getUserEducations();

    result.fold(
        (l) =>
            emit(AICharacterError(message: l, title: 'Get educations failed')),
        (r) {
      final listData = r.data as List;
      educations = listData.map((e) => EducationModel.fromJson(e)).toList();

      emit(AICharacterGetUserEducationsSuccess(educations));
    });
  }

  FutureOr<void> _getExperiences(AICharacterGetUserExperiences event,
      Emitter<AiCharacterState> emit) async {
    final result = await profileUseCase.getUserEducations();

    result.fold(
        (l) =>
            emit(AICharacterError(message: l, title: 'Get experiences failed')),
        (r) {
      final listData = r.data as List;
      experiences = listData.map((e) => ExperienceModel.fromJson(e)).toList();

      emit(AICharacterGetUserExperiencesSuccess(experiences));
    });
  }

  FutureOr<void> _addBasicInfoOfBot(
      AddBasicInfoOfCharacterBot event, Emitter<AiCharacterState> emit) async {
    try {
      propertyAICharacterModel = propertyAICharacterModel.copyWith(
        summary: event.summary,
        name: event.name,
      );
      emit(const AddBasicInfoOfCharacterBotSuccess());
    } catch (e) {
      emit(const AICharacterError(
          message: ['Check your info again'], title: 'Get experiences failed'));
    }
  }
}
