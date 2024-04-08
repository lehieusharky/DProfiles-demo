import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_ai_character.freezed.dart';

part 'property_ai_character.g.dart';

@freezed
class PropertyAICharacterModel with _$PropertyAICharacterModel {
  const factory PropertyAICharacterModel({
    @JsonKey(name: 'session_id') @Default(0) int? sessionId,
    String? summary,
    String? name,
    @Default("") String? avatar,
    @Default(2) int? inspiring,
    @Default(0) int? smart,
    @Default(0) int? friendly,
    @Default(0) int? supportive,
    @Default(4) int? helpful,
    @Default(0) int? humorous,
    @Default(1) int? passive,
    @Default(0) int? aggressive,
    @Default(1) int? violent,
    @Default(0) int? formal,
    @Default(0) int? spiritual,
    @Default(0) int? chatty,
    @Default(0) int? energetic,
    @Default(3) int? sexy,
    @Default(0) int? flirty,
  }) = _PropertyAICharacterModel;

  factory PropertyAICharacterModel.fromJson(Map<String, Object?> json) =>
      _$PropertyAICharacterModelFromJson(json);
}
