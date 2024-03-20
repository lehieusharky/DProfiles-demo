import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class AppFailureHandler {
  String msgTranslation(BuildContext context);
}

class AppFailure extends Equatable implements AppFailureHandler {
  final String msgCode;

  const AppFailure({required this.msgCode});

  @override
  List<Object?> get props => [msgCode];

  @override
  String msgTranslation(BuildContext context) {
    // TODO: implement msgTranslation
    throw UnimplementedError();
  }
}
