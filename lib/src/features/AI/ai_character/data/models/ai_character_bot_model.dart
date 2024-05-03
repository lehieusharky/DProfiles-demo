import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_character_bot_model.freezed.dart';

part 'ai_character_bot_model.g.dart';

@freezed
class AICharacterBotModel with _$AICharacterBotModel {
  const factory AICharacterBotModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? name,
    String? summary,
    int? type,
    Definition? definition,
    String? url,
    String? avatar,
    int? inspiring,
    int? smart,
    int? friendly,
    int? supportive,
    int? helpful,
    int? humorous,
    int? passive,
    int? aggressive,
    int? violent,
    int? formal,
    int? spiritual,
    int? chatty,
    int? energetic,
    int? sexy,
    int? flirty,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    @Default(0) int? noOfConversation,
    @Default(0) int? noOfMessage,
  }) = _AICharacterBotModel;

  factory AICharacterBotModel.fromJson(Map<String, Object?> json) =>
      _$AICharacterBotModelFromJson(json);
}

@freezed
class Definition with _$Definition {
  const factory Definition({
    String? name,
    @JsonKey(name: 'short_description') String? shortDescription,
    @JsonKey(name: 'long_description') String? longDescription,
    String? greeting,
  }) = _Definition;

  factory Definition.fromJson(Map<String, Object?> json) =>
      _$DefinitionFromJson(json);
}
