import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/sign_up/widgets/wallet_id.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateAnAccountPage extends StatefulWidget {
  const CreateAnAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAnAccountPage> createState() => _CreateAnAccountPageState();
}

class _CreateAnAccountPageState extends State<CreateAnAccountPage> {
  bool _isAgreePolicy = false;

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
                  Assets.icons.logos.dGreyProfileGreenLogo.svg(),
                  context.sizedBox(width: 9),
                  Assets.icons.logos.dGreyProfileGreen.svg(),
                ],
              ),
            ),
            Text(
              'Create Account',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w700)
                  .headlineMedium,
            ),
            const WalletId(),
            Padding(
              padding: context.padding(vertical: 32),
              child: Divider(
                thickness: 1,
                color: colorScheme(context).outlineVariant,
              ),
            ),
            const SignUpForm(),
            Padding(
              padding: context.padding(top: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isAgreePolicy,
                    checkColor: colorScheme(context).background,
                    activeColor: colorScheme(context).primary,
                    fillColor: MaterialStateProperty.all(_isAgreePolicy
                        ? colorScheme(context).primary
                        : colorScheme(context).outlineVariant),
                    onChanged: (value) {
                      setState(() {
                        _isAgreePolicy = !_isAgreePolicy;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text:
                            'By signing up I agree that I’m 18 years of age or older, to the ',
                        style: AppFont()
                            .fontTheme(
                              context,
                              weight: FontWeight.w400,
                              color: colorScheme(context).outline,
                            )
                            .bodyMedium,
                      ),
                      TextSpan(
                        text:
                            'User Agreements, Privacy Policy, Cookie Policy, E-Sign Consent.',
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).onBackground,
                                weight: FontWeight.bold)
                            .bodyMedium,
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => context.router.push(const SignUpRoute()),
                      ),
                    ])),
                  ),
                ],
              ),
            ),
            Padding(
              padding: context.padding(vertical: 32),
              child: MyButton(
                width: context.width,
                onPressed: () =>
                    context.router.push(const SignUpSuccessRoute()),
                title: 'Sign up',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
