import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_with_bot_model.freezed.dart';

part 'message_with_bot_model.g.dart';

@freezed
class MessageWithBotModel with _$MessageWithBotModel {
  const factory MessageWithBotModel({
    required String message,
    @JsonKey(name: 'is_user') bool? isUser,
    @JsonKey(name: 'create_at') required String createAt,
  }) = _MessageWithBotModel;

  factory MessageWithBotModel.fromJson(Map<String, Object?> json) =>
      _$MessageWithBotModelFromJson(json);
}
