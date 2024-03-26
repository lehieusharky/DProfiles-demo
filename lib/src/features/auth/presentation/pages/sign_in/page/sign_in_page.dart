import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/widgets/sign_in_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/bottom_navigation_text.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      body: Column(
        children: [
          Padding(
            padding: context.padding(top: 20, bottom: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.logos.dWhitePWhite.svg(),
                context.sizedBox(width: 9),
                Assets.icons.logos.dprofilesBlack.svg(),
              ],
            ),
          ),
          Text(
            'Login',
            style: AppFont()
                .fontTheme(context, weight: FontWeight.w700)
                .headlineMedium,
          ),
          Padding(
            padding: context.padding(vertical: 32),
            child: Divider(
              thickness: 0.5,
              color: colorScheme(context).outlineVariant,
            ),
          ),
          const SignInForm(),
          const BottomNavigationText(
            content1: "Don’t have an account?  ",
            content2: 'SignUp',
            pageRoute: SignUpRoute(),
          ),
        ],
      ),
    );
  }
}
