import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/widgets/forgot_password_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/bottom_navigation_text.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      heightAppBar: 50,
      canBack: true,
      body: Column(
        children: [
          Padding(
            padding: context.padding(top: 20, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.logos.dWhitePWhite.svg(),
                context.sizedBox(width: 9),
                Assets.icons.logos.dprofilesBlack.svg(),
              ],
            ),
          ),
          BottomNavigationText(
            content1: "Don’t have an account?   ",
            content2: 'Sign up for free',
            onPressed: () => context.router.push(const SignUpRoute()),
          ),
          Padding(
            padding: context.padding(top: 80, bottom: 32),
            child: Text(
              'Forgot password',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w700)
                  .headlineMedium,
            ),
          ),
          Text(
            'Enter your email to receive an email to reset your password',
            textAlign: TextAlign.center,
            style: AppFont()
                .fontTheme(context, color: colorScheme(context).outline)
                .bodyMedium,
          ),
          Padding(
            padding: context.padding(vertical: 32),
            child: Divider(
              thickness: 0.5,
              color: colorScheme(context).outlineVariant,
            ),
          ),
          const ForgotPasswordForm(),
          Padding(
            padding: context.padding(top: 32, bottom: 24),
            child: MyButton(
              width: context.width,
              onPressed: () =>
                  context.router.push(const VerifyEmailForgotPasswordRoute()),
              title: 'Continue',
            ),
          ),
          Text(
            'Nevermind, I got it',
            textAlign: TextAlign.center,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .bodyMedium,
          ),
        ],
      ),
    );
  }
}
