import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResendCodeSignUp extends StatelessWidget {
  final String email;
  const ResendCodeSignUp({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(top: 28),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "${appLocal(context).didntReceiveAnyCode}   ",
              style: AppFont()
                  .fontTheme(
                    context,
                    weight: FontWeight.w700,
                    color: colorScheme(context).onBackground,
                  )
                  .bodyMedium,
            ),
            TextSpan(
              text: appLocal(context).resendAgain,
              style: AppFont()
                  .fontTheme(context,
                      color: colorScheme(context).outline,
                      weight: FontWeight.w700)
                  .bodyMedium,
              recognizer: TapGestureRecognizer()
                ..onTap = () => _resendCode(context),
            ),
          ],
        ),
      ),
    );
  }

  void _resendCode(BuildContext context) =>
      context.read<AuthBloc>().add(AuthResendSignUpEmail(email));
}
