import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/page/sign_in_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

extension SignInPageExt on SignInPage {
  void handleSignInState(AuthState state, BuildContext context) {
    if (state is AuthSignInSuccess) {
      Navigator.pop(context);

      context.router.replace(const DashboardRoute());
    }

    if (state is AuthLoading) {
      showLoadingDialog(context);
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
