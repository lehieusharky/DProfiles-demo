import 'dart:async';

import 'package:demo_dprofiles/src/features/auth/domain/usecases/auth_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<AuthSendSignUpEmail>(_sendSignUpEmail);
  }

  FutureOr<void> _sendSignUpEmail(
      AuthSendSignUpEmail event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    emit(const AuthSendSignUpEmailSuccess());
  }
}
