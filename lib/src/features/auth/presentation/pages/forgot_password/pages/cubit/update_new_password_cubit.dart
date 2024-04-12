import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:demo_dprofiles/src/core/common/simple_status/simple_state_status.dart';
import 'package:demo_dprofiles/src/core/common/simple_status/simple_status.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/domain/repositories/forgot_password_repository.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';

part 'update_new_password_cubit.g.dart';
part 'update_new_password_state.dart';

class UpdateNewPasswordCubit extends Cubit<UpdateNewPasswordState> {
  UpdateNewPasswordCubit() : super(UpdateNewPasswordState.initial) {
    emailController.addListener(() {
      validatePassword();
    });
    passwordController.addListener(() {
      validatePassword();
    });
    confirmPasswordController.addListener(() {
      validatePassword();
    });
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final repository = injector.get<ForgotPasswordRepository>();

  void validatePassword() {
    final emailValid = emailController.text.trim().isValidEmail();
    final passwordValid = passwordController.text.trim().isNotEmpty &&
        passwordController.text.trim() == confirmPasswordController.text.trim();
    final isValid = emailValid && passwordValid;
    emit(state.copyWith(submitEnabled: isValid));
  }

  void resetPassword() async {
    emit(state.copyWith(status: SimpleStateStatus.loading));
    final result = await repository.resetPassword(
        emailController.text.trim(), passwordController.text.trim());
    result.fold(
      (error) => emit(state.copyWith(status: SimpleStateStatus.failure)),
      (data) => emit(state.copyWith(status: SimpleStateStatus.success)),
    );
  }
}
