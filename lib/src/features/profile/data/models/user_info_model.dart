import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.freezed.dart';

part 'user_info_model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    @Default(0) int? id,
    @JsonKey(name: 'wallet_address') String? walletAddress,
    String? username,
    String? email,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'gender_id') int? genderId,
    @JsonKey(name: 'birth_day') String? birthDay,
    String? address,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'district_id') int? districtId,
    @JsonKey(name: 'cell_phone') String? cellPhone,
    @JsonKey(name: 'year_experience') int? yearExperience,
    @JsonKey(name: 'job_level_id') int? jobLevelId,
    String? avatar,
    int? status,
    String? summary,
    @JsonKey(name: 'salary_pay_type') int? salaryPayType,
    int? salary,
    String? headline,
    @JsonKey(name: 'is_active') int? isActive,
    @JsonKey(name: 'you_are_id') int? youAreId,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'last_date_login') String? lastDateLogin,
    @JsonKey(name: 'last_updated') String? lastUpdated,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    @JsonKey(name: 'reset_pass_token') String? resetPassToken,
    @JsonKey(name: 'reset_pass_token_expires') String? resetPassTokenExpires,
    @JsonKey(name: 'register_token') String? registerToken,
    @JsonKey(name: 'register_token_expires') String? registerTokenExpires,
    int? type,
    @JsonKey(name: 'token_id') @Default(0) int? tokenId,
    @JsonKey(name: 'id_card_number') String? idCardNumber,
    String? nationality,
    @JsonKey(name: 'job_open_status') int? jobOpenStatus,
    @JsonKey(name: 'invest_ref_code') String? investRefCode,
    @JsonKey(name: 'linkedin_url') String? linkedinUrl,
    @JsonKey(name: 'facebook_url') String? facebookUrl,
    @JsonKey(name: 'instagram_url') String? instagramUrl,
    @JsonKey(name: 'telegram_url') String? telegramUrl,
    @JsonKey(name: 'whatsapp_url') String? whatsappUrl,
    @JsonKey(name: 'zalo_url') String? zaloUrl,
    @JsonKey(name: 'twitter_url') String? twitterUrl,
    int? point,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, Object?> json) =>
      _$UserInfoModelFromJson(json);
}
