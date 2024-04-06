import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/sign_up_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

extension SignUpPageExt on SignUpPage {
  void handleSignUpState(AuthState state, BuildContext context) {
    if (state is AuthSendSignUpEmailSuccess) {
      context.router.push(VerifySignUpRoute(email: state.email));
    }

    if (state is AuthError) {
      showErrorDialog(
        context,
        title: state.title,
        description: state.message,
      );
    }
  }
}
