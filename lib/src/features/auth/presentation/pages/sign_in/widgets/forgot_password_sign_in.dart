import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSignIn extends StatelessWidget {
  const ForgotPasswordSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(appLocal(context).forgotYourPassword,
            style: AppFont()
                .fontTheme(
                  context,
                  weight: FontWeight.w700,
                  color: colorScheme(context).outline,
                )
                .bodyMedium),
        TextButton(
            onPressed: () => _onResetPasswordPressed(context),
            child: Text(
              appLocal(context).resetPassword,
              style: AppFont()
                  .fontTheme(
                    context,
                    weight: FontWeight.w700,
                    color: colorScheme(context).primary,
                  )
                  .bodyMedium,
            )),
      ],
    );
  }

  void _onResetPasswordPressed(BuildContext context) =>
      context.router.push(const ForgotPasswordRoute());
}
