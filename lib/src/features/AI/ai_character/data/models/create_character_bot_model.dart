import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_character_bot_model.freezed.dart';

part 'create_character_bot_model.g.dart';

@freezed
class CreatedCharacterBotModel with _$CreatedCharacterBotModel {
  const factory CreatedCharacterBotModel({
    @JsonKey(name: 'character_definition')
    CharacterDefinition? characterDefinition,
    @JsonKey(name: 'chat_bot_id') @Default(0) int? chatBotId,
  }) = _CreateCharacterBotModel;

  factory CreatedCharacterBotModel.fromJson(Map<String, Object?> json) =>
      _$CreatedCharacterBotModelFromJson(json);
}

@freezed
class CharacterDefinition with _$CharacterDefinition {
  const factory CharacterDefinition({
    String? name,
    @Default("") @JsonKey(name: 'short_description') String? shortDescription,
    @Default("") @JsonKey(name: 'long_description') String? longDescription,
    @Default("") String? greeting,
  }) = _CharacterDefinition;

  factory CharacterDefinition.fromJson(Map<String, Object?> json) =>
      _$CharacterDefinitionFromJson(json);
}
