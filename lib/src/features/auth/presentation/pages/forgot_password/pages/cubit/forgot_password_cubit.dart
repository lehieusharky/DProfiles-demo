import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:demo_dprofiles/src/core/common/simple_status/simple_state_status.dart';
import 'package:demo_dprofiles/src/core/common/simple_status/simple_status.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/domain/repositories/forgot_password_repository.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';

part 'forgot_password_cubit.g.dart';
part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordState.initial) {
    emailController.addListener(() {
      validateEmail();
    });
  }

  void validateEmail() {
    final isValid = emailController.text.isValidEmail();
    emit(state.copyWith(submitEnabled: isValid));
  }

  final emailController = TextEditingController();
  final repository = injector.get<ForgotPasswordRepository>();

  void requestResetPassword() async {
    emit(state.copyWith(status: SimpleStateStatus.loading));
    final result =
        await repository.requestForgotPassword(emailController.text.trim());
    result.fold(
      (error) => emit(state.copyWith(status: SimpleStateStatus.failure)),
      (data) => emit(state.copyWith(status: SimpleStateStatus.success)),
    );
  }
}
