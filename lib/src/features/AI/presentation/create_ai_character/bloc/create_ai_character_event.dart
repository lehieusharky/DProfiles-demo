part of 'create_ai_character_bloc.dart';

@freezed
class CreateAiCharacterEvent with _$CreateAiCharacterEvent {
  const factory CreateAiCharacterEvent.started() = _Started;
}