import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/widgets/update_new_password_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/bottom_navigation_text.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UpdateNewPasswordPage extends StatelessWidget {
  const UpdateNewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      isBack: true,
      heightAppBar: 50,
      onBack: () {
        while (context.router.canPop()) {
          Navigator.pop(context);
        }
      },
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
              'New password',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w700)
                  .headlineMedium,
            ),
          ),
          const UpdateNewPasswordForm(),
        ],
      ),
    );
  }
}
