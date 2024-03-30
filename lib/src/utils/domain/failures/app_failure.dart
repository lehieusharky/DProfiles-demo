import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class AppFailureHandler {
  String msgTranslation(BuildContext context);
}

class AppFailure extends Equatable implements AppFailureHandler {
  final String? _msgCode;
  final AppResponse? _response;

  const AppFailure({
    String? msgCode,
    AppResponse? response,
  })  : _response = response,
        _msgCode = msgCode;

  @override
  List<Object?> get props => [_msgCode];

  @override
  String msgTranslation(BuildContext context) {
    throw UnimplementedError();
  }

  String? get msgCode => _msgCode;

  AppResponse? get response => _response;
}
