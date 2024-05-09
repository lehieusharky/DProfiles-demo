import 'dart:async';

import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/create_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/property_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/domain/usecase/ai_character_usecase.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/chat_bot_message_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/domain/usecases/chat_with_ai_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:demo_dprofiles/src/utils/constant/ai_character_bot_properties.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_character_bloc.freezed.dart';
part 'ai_character_event.dart';
part 'ai_character_state.dart';

class AiCharacterBloc extends Bloc<AiCharacterEvent, AiCharacterState> {
  final AICharacterUseCase aiCharacterUseCase;
  final ProfileUseCase profileUseCase;
  final ChatWithAIUseCase chatWithAiUseCase;

  int _currentStep = 0;

  List<EducationModel> educations = [];

  List<CertificateModel> certificates = [];

  List<ExperienceModel> experiences = [];

  int get currentStep => _currentStep;

  PropertyAICharacterModel propertyAICharacterModel =
      const PropertyAICharacterModel();

  int _currentPagePopularBot = 1;

  AiCharacterBloc(
      this.aiCharacterUseCase, this.profileUseCase, this.chatWithAiUseCase)
      : super(const AiCharacterState.initial()) {
    on<AICharacterChangeCreationStep>(_changeCreateStep);
    on<AddBasicInfoOfCharacterBot>(_addBasicInfoOfBot);
    on<AICharacterGetUserInfo>(_getUserInfo);
    on<AICharacterGetUserCertificates>(_getCertificates);
    on<AICharacterGetUserEducations>(_getEducations);
    on<AICharacterGetUserExperiences>(_getExperiences);
    on<GenerateCharacterBot>(_generateCharacterBot);
    on<GetListCharacterBot>(_getListCharacterBot);
    on<UpdatePropertiesOfCharacterBot>(_updatePropertiesOfBot);
    on<GetListPopularCharacterBot>(_getListPopularCharacterBot);
    on<AICharacterGetChatBotDetail>(_getChatBotDetail);
    on<AICharacterRemoveCertificate>(_removeCertificate);
    on<AICharacterRemoveEducation>(_removeEducation);
    on<AICharacterRemoveExperience>(_removeExperience);
    on<AICharacterEditCertificate>(_editCertificate);
    on<AICharacterEditEducation>(_editEducation);
    on<AICharacterEditExperience>(_editExperience);
    on<AICharacterGetChatWithBotHistory>(_getChatWithBotHistory);
    on<AICharacterFollowBot>(_followBot);
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

    //
    // propertyAICharacterModel = propertyAICharacterModel.copyWith(
    //   educations: educations.map((e) => e).toList(),
    //   experiences: experiences.map((e) => e).toList(),
    // );

    propertyAICharacterModel = propertyAICharacterModel.copyWith(
        sessionId: sharePreference.getSessionID());

    final result =
        await aiCharacterUseCase.generateCharacterBot(propertyAICharacterModel);

    result.fold(
      (l) => emit(AICharacterError(
          message: [l], title: 'Generate character bot failed')),
      (r) {
        emit(GenerateCharacterBotSuccess(
            CreatedCharacterBotModel.fromJson(r.data)));
      },
    );
  }

  FutureOr<void> _getListCharacterBot(
      GetListCharacterBot event, Emitter<AiCharacterState> emit) async {
    emit(const AICharacterLoading());

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
    final result = await profileUseCase.getUserExperiences();

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

  FutureOr<void> _updatePropertiesOfBot(UpdatePropertiesOfCharacterBot event,
      Emitter<AiCharacterState> emit) async {
    try {
      _updateBotProperties(event);
    } catch (e) {
      emit(const AICharacterError(
          message: ['Update properties failed'], title: 'Update failed'));
    }
  }

  void _updateBotProperties(UpdatePropertiesOfCharacterBot event) {
    switch (event.property) {
      case PropertiesOfCharacter.inspiring:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          inspiring: event.value,
        );
        break;
      case PropertiesOfCharacter.smart:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          smart: event.value,
        );
        break;
      case PropertiesOfCharacter.friendly:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          friendly: event.value,
        );
        break;
      case PropertiesOfCharacter.supportive:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          supportive: event.value,
        );
        break;
      case PropertiesOfCharacter.helpful:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          helpful: event.value,
        );
        break;
      case PropertiesOfCharacter.humorous:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          humorous: event.value,
        );
        break;
      case PropertiesOfCharacter.passive:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          passive: event.value,
        );
        break;
      case PropertiesOfCharacter.aggressive:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          aggressive: event.value,
        );
        break;
      case PropertiesOfCharacter.violent:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          violent: event.value,
        );
        break;
      case PropertiesOfCharacter.formal:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          formal: event.value,
        );
        break;
      case PropertiesOfCharacter.spiritual:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          spiritual: event.value,
        );
        break;
      case PropertiesOfCharacter.chatty:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          chatty: event.value,
        );
        break;
      case PropertiesOfCharacter.energetic:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          energetic: event.value,
        );
        break;
      case PropertiesOfCharacter.sexy:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          sexy: event.value,
        );
        break;
      case PropertiesOfCharacter.flirty:
        propertyAICharacterModel = propertyAICharacterModel.copyWith(
          flirty: event.value,
        );
        break;
      default:
        break;
    }
  }

  FutureOr<void> _getListPopularCharacterBot(
      GetListPopularCharacterBot event, Emitter<AiCharacterState> emit) async {
    emit(const AICharacterLoading());

    final result = await aiCharacterUseCase.getListPopularCharacterBot(
      page: ++_currentPagePopularBot,
      limit: event.limit,
    );

    result.fold(
        (l) => emit(AICharacterError(
            message: [l],
            title: 'Get list popular character bot failed')), (r) {
      final listData = r.data as List;

      final characterBots =
          listData.map((e) => AICharacterBotModel.fromJson(e)).toList();

      emit(GetListPopularCharacterBotSuccess(characterBots));
    });
  }

  FutureOr<void> _getChatBotDetail(
      AICharacterGetChatBotDetail event, Emitter<AiCharacterState> emit) async {
    emit(const AICharacterLoading());

    final result =
        await chatWithAiUseCase.getChatBotDetail(event.id, event.isPopularBot);

    result.fold(
        (l) => emit(AICharacterError(
            message: [l], title: 'Get chat bot detail  failed')), (r) {
      emit(AICharacterGetChatBotDetailSuccess(
          AICharacterBotModel.fromJson(r.data)));
    });
  }

  FutureOr<void> _removeCertificate(AICharacterRemoveCertificate event,
      Emitter<AiCharacterState> emit) async {
    emit(const AiCharacterState.initial());

    try {
      certificates.remove(event.certificateModel);

      emit(const AICharacterRemoveCertificateSuccess());
    } catch (e) {
      emit(AICharacterError(
          message: [e.toString()], title: 'Delete education failed'));
    }
  }

  FutureOr<void> _removeEducation(
      AICharacterRemoveEducation event, Emitter<AiCharacterState> emit) async {
    emit(const AiCharacterState.initial());

    try {
      educations.remove(event.educationModel);

      emit(const AICharacterRemoveEducationSuccess());
    } catch (e) {
      emit(AICharacterError(
          message: [e.toString()], title: 'Delete education failed'));
    }
  }

  FutureOr<void> _removeExperience(
      AICharacterRemoveExperience event, Emitter<AiCharacterState> emit) async {
    emit(const AiCharacterState.initial());

    try {
      experiences.remove(event.experienceModel);

      emit(const AICharacterRemoveEducationSuccess());
    } catch (e) {
      emit(AICharacterError(
          message: [e.toString()], title: 'Delete education failed'));
    }
  }

  FutureOr<void> _editCertificate(
      AICharacterEditCertificate event, Emitter<AiCharacterState> emit) async {
    emit(const AiCharacterState.initial());

    try {
      certificates.removeAt(event.index);
      certificates.insert(event.index, event.certificateModel);

      emit(const AICharacterEditCertificateSuccess());
    } catch (e) {
      emit(AICharacterError(
          message: [e.toString()], title: 'Delete education failed'));
    }
  }

  FutureOr<void> _editEducation(
      AICharacterEditEducation event, Emitter<AiCharacterState> emit) async {
    emit(const AiCharacterState.initial());

    try {
      educations.removeAt(event.index);
      educations.insert(event.index, event.educationModel);

      emit(const AICharacterEditEducationSuccess());
    } catch (e) {
      emit(AICharacterError(
          message: [e.toString()], title: 'Delete education failed'));
    }
  }

  FutureOr<void> _editExperience(
      AICharacterEditExperience event, Emitter<AiCharacterState> emit) async {
    emit(const AiCharacterState.initial());

    try {
      experiences.removeAt(event.index);
      experiences.insert(event.index, event.experienceModel);

      emit(const AICharacterEditEducationSuccess());
    } catch (e) {
      emit(AICharacterError(
          message: [e.toString()], title: 'Delete education failed'));
    }
  }

  FutureOr<void> _getChatWithBotHistory(AICharacterGetChatWithBotHistory event,
      Emitter<AiCharacterState> emit) async {
    emit(const AICharacterLoading());

    final result = await chatWithAiUseCase.getChatBotMessageHistory(
        chatBotID: event.chatBotID,
        page: event.page,
        limit: event.limit,
        search: event.search);

    result.fold(
      (l) => emit(
          AICharacterError(message: [l], title: 'Get chat bot detail  failed')),
      (r) {
        final data = r.data as List;

        final messages =
            data.map((e) => ChatBotMessageHistoryModel.fromJson(e)).toList();

        emit(AICharacterGetChatWithBotHistorySuccess(messages));
      },
    );
  }

  FutureOr<void> _followBot(
      AICharacterFollowBot event, Emitter<AiCharacterState> emit) async {
    final result = await aiCharacterUseCase.followCharacterBot(event.chatBotID);

    result.fold(
      (l) => emit(
          AICharacterError(message: [l], title: 'Get chat bot detail  failed')),
      (r) => emit(AICharacterFollowBotSuccess(event.chatBotID)),
    );
  }
}
