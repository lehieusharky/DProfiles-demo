// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAccountModelImpl _$$CreateAccountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAccountModelImpl(
      walletAddress: json['wallet_address'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$CreateAccountModelImplToJson(
        _$CreateAccountModelImpl instance) =>
    <String, dynamic>{
      'wallet_address': instance.walletAddress,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
    };
