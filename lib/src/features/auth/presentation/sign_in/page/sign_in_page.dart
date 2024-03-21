import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
                Assets.icons.logos.talentUpLogo.svg(),
                context.sizedBox(width: 9),
                Assets.icons.logos.talentUpBlack.svg(),
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
              thickness: 1,
              color: colorScheme(context).outlineVariant,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding(bottom: 10),
                child: Text(
                  'EMAIL',
                  style: AppFont()
                      .fontTheme(context,
                          weight: FontWeight.w700,
                          color: colorScheme(context).outline)
                      .bodySmall,
                ),
              ),
              MyTextFormField(
                controller: _emailController,
                hintText: 'Email address',
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
          Padding(
            padding: context.padding(top: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: context.padding(bottom: 10),
                  child: Text(
                    'PASSWORD',
                    style: AppFont()
                        .fontTheme(context,
                            weight: FontWeight.w700,
                            color: colorScheme(context).outline)
                        .bodySmall,
                  ),
                ),
                MyTextFormField(
                  controller: _passwordController,
                  hintText: 'Password',
                  isPasswordField: true,
                  keyboardType: TextInputType.text,
                ),
                Padding(
                  padding: context.padding(top: 12),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Forgot your password  ',
                      style: AppFont()
                          .fontTheme(
                            context,
                            weight: FontWeight.w700,
                            color: colorScheme(context).onBackground,
                          )
                          .bodyMedium,
                    ),
                    TextSpan(
                      text: 'Reset password',
                      style: AppFont()
                          .fontTheme(context,
                              color: colorScheme(context).primary,
                              weight: FontWeight.w700)
                          .bodyMedium,
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => context.router.push(const SignUpRoute()),
                    ),
                  ])),
                )
              ],
            ),
          ),
          Padding(
            padding: context.padding(vertical: 32),
            child: MyButton(
              width: context.width,
              onPressed: () => context.router.push(const DashboardRoute()),
              title: 'Login',
            ),
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'Don’t have an account?  ',
              style: AppFont()
                  .fontTheme(
                    context,
                    weight: FontWeight.w700,
                    color: colorScheme(context).onBackground,
                  )
                  .bodyMedium,
            ),
            TextSpan(
              text: 'Sign up',
              style: AppFont()
                  .fontTheme(context,
                      color: colorScheme(context).primary,
                      weight: FontWeight.w700)
                  .bodyMedium,
              recognizer: TapGestureRecognizer()
                ..onTap = () => context.router.push(const SignUpRoute()),
            ),
          ]))
        ],
      ),
    );
  }
}
