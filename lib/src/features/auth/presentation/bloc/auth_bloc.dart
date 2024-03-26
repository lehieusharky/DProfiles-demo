import 'dart:async';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/features/auth/domain/usecases/auth_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<AuthSendSignUpEmail>(_sendSignUpEmail);
    on<AuthResendSignUpEmail>(_resendSignUpEmail);
    on<AuthValidateSignUpCode>(_validateSignUpCode);
    on<AuthCreateAccount>(_createAnAccount);
  }

  FutureOr<void> _sendSignUpEmail(
    AuthSendSignUpEmail event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final result = await authUseCase.sendSignUpEmail(event.email);

    result.fold(
      (l) => emit(AuthError(l)),
      (r) {
        if (r.statusCode != 200) {
          emit(AuthError(r.message));
        } else {
          emit(const AuthSendSignUpEmailSuccess());
        }
      },
    );
  }

  FutureOr<void> _resendSignUpEmail(
      AuthResendSignUpEmail event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await authUseCase.resendSignUpEmail(event.email);

    result.fold(
      (l) => emit(AuthError(l)),
      (r) {
        if (r.statusCode != 200) {
          emit(AuthError(r.message));
        } else {
          emit(const AuthResendSignUpEmailSuccess());
        }
      },
    );
  }

  FutureOr<void> _validateSignUpCode(
      AuthValidateSignUpCode event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result =
        await authUseCase.validateSignUpCode(event.email, event.code);

    result.fold(
      (l) => emit(AuthError(l)),
      (r) {
        if (r.statusCode != 200) {
          emit(AuthValidateSignUpCodeFailed(r.message));
        } else {
          emit(const AuthValidateSignUpCodeSuccess());
        }
      },
    );
  }

  FutureOr<void> _createAnAccount(
      AuthCreateAccount event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await authUseCase.createAnAccount(event.model);

    result.fold(
      (l) => emit(AuthError(l)),
      (r) {
        if (r.statusCode != 200) {
          emit(AuthError(r.message));
        } else {
          emit(const AuthCreateAnAccountSuccess());
        }
      },
    );
  }
}
