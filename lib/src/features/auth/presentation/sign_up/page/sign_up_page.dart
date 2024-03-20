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
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
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
            Padding(
              padding: context.padding(top: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your wallet ID',
                        style: AppFont()
                            .fontTheme(context,
                                weight: FontWeight.w400,
                                color: colorScheme(context).outline)
                            .bodySmall,
                      ),
                      Text(
                        'Change wallet',
                        style: AppFont()
                            .fontTheme(context,
                                weight: FontWeight.w500,
                                color: colorScheme(context).primary)
                            .bodySmall,
                      ),
                    ],
                  ),
                  Padding(
                    padding: context.padding(top: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: colorScheme(context)
                              .outlineVariant
                              .withOpacity(0.2),
                          borderRadius: BorderRadius.circular(48)),
                      padding: context.padding(vertical: 10, horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '123...AJSL',
                            style: AppFont()
                                .fontTheme(context, weight: FontWeight.bold)
                                .bodyMedium,
                          ),
                          Assets.icons.logos.copyIcon.svg(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
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
                    'NAME',
                    style: AppFont()
                        .fontTheme(context,
                            weight: FontWeight.w700,
                            color: colorScheme(context).outline)
                        .bodySmall,
                  ),
                ),
                MyTextFormField(
                  controller: _nameController,
                  hintText: 'Enter your name',
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
                      'NEW PASSWORD',
                      style: AppFont()
                          .fontTheme(context,
                              weight: FontWeight.w700,
                              color: colorScheme(context).outline)
                          .bodySmall,
                    ),
                  ),
                  MyTextFormField(
                    controller: _newPasswordController,
                    hintText: 'Password',
                    isPasswordField: true,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
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
                      'CONFIRM PASSWORD',
                      style: AppFont()
                          .fontTheme(context,
                              weight: FontWeight.w700,
                              color: colorScheme(context).outline)
                          .bodySmall,
                    ),
                  ),
                  MyTextFormField(
                    controller: _confirmPasswordController,
                    hintText: 'Password',
                    isPasswordField: true,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
            ),
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
