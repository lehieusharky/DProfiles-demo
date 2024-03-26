import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: context.padding(top: 5, bottom: 40),
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
              'Get Started',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w700)
                  .headlineMedium,
            ),
            Text(
              'by creating a free account.',
              style: AppFont().fontTheme(context).bodyMedium,
            ),
            Padding(
              padding: context.padding(vertical: 32),
              child: Divider(
                thickness: 1,
                color: colorScheme(context).outlineVariant,
              ),
            ),
            const SignUpForm(),
            Padding(
              padding: context.padding(vertical: 32),
              child: MyButton(
                width: context.width,
                onPressed: () => context.router.push(const VerifyEmailRoute()),
                title: 'Sign up',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
