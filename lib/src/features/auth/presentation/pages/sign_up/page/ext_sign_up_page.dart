import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/sign_up_page.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/verify_sign_up_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

extension SignUpPageExt on SignUpPage {
  void handleSignUpState(AuthState state, BuildContext context, String email) {
    if (state is AuthSendSignUpEmailSuccess) {
      context.router.push(VerifySignUpRoute(email: email));
    }

    if (state is AuthError) {
      showErrorDialog(
        context,
        title: 'Send sign up email failed',
        description: state.message,
      );
    }
  }
}

extension VefifySignUpCodePageExt on VerifySignUpPage {
  void handleVerifySignUpState(AuthState state, BuildContext context) {
    if (state is AuthResendSignUpEmailSuccess) {
      showErrorDialog(context, title: 'Resend', description: 'description');
    }

    if (state is AuthValidateSignUpCodeSuccess) {
      context.router.push(CreateAnAccountRoute(email: email));
    }

    if (state is AuthValidateSignUpCodeFailed) {
      showErrorDialog(
        context,
        title: 'Verify failed',
        description: state.message,
      );
    }

    if (state is AuthError) {
      showErrorDialog(
        context,
        title: 'Resend sign up email failed',
        description: state.message,
      );
    }
  }


}
