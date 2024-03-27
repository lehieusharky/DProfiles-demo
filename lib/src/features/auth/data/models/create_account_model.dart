import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_model.freezed.dart';

part 'create_account_model.g.dart';

@freezed
class CreateAccountModel with _$CreateAccountModel {
  const factory CreateAccountModel({
    @JsonKey(name: 'wallet_address') String? walletAddress,
    required String username,
    required String password,
    @Default('') String? email,
  }) = _CreateAccountModel;

  factory CreateAccountModel.fromJson(Map<String, Object?> json) =>
      _$CreateAccountModelFromJson(json);
}
