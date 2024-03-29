import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_model.freezed.dart';

part 'sign_in_model.g.dart';

@freezed
class SignInModel with _$SignInModel {
  const factory SignInModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _SignInModel;

  factory SignInModel.fromJson(Map<String, Object?> json) =>
      _$SignInModelFromJson(json);
}
