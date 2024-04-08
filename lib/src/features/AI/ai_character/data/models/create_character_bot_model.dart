import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_character_bot_model.freezed.dart';

part 'create_character_bot_model.g.dart';

@freezed
class CreatedCharacterBotModel with _$CreatedCharacterBotModel {
  const factory CreatedCharacterBotModel({
    String? name,
    @JsonKey(name: 'short_description') String? shortDescription,
    @JsonKey(name: 'long_description') String? longDescription,
    String? greeting,
  }) = _CreateCharacterBotModel;

  factory CreatedCharacterBotModel.fromJson(Map<String, Object?> json) =>
      _$CreatedCharacterBotModelFromJson(json);
}
