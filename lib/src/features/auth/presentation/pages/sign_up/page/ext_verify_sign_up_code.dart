import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/verify_sign_up_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

extension VefifySignUpCodePageExt on VerifySignUpPage {
  void handleVerifySignUpState(AuthState state, BuildContext context) {
    if (state is AuthResendSignUpEmailSuccess) {
      Navigator.pop(context);
      showErrorDialog(context,
          title: 'Code was resend', description: 'Check your email again!');
    }

    if (state is AuthValidateSignUpCodeSuccess) {
      Navigator.pop(context);
      context.router.replace(CreateAnAccountRoute(email: email));
    }

    if (state is AuthLoading) {
      showLoadingDialog(context);
    }

    if (state is AuthValidateSignUpCodeFailed) {
      Navigator.pop(context);
      showErrorDialog(
        context,
        title: appLocal(context).validateCodeFailed,
        description: state.message,
      );
    }

    if (state is AuthError) {
      Navigator.pop(context);
      showErrorDialog(
        context,
        title: state.title,
        description: state.message,
      );
    }
  }
}
