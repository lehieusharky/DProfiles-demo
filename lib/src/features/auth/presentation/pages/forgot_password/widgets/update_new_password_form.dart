import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

class UpdateNewPasswordForm extends StatefulWidget {
  const UpdateNewPasswordForm({Key? key}) : super(key: key);

  @override
  State<UpdateNewPasswordForm> createState() => _UpdateNewPasswordFormState();
}

class _UpdateNewPasswordFormState extends State<UpdateNewPasswordForm> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthField(
            title: 'EMAIL', hint: 'Your email', controller: _emailController),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'NEW PASSWORD',
              hint: 'Password',
              isPasswordField: true,
              controller: _emailController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'CONFIRM PASSWORD',
              hint: 'Password',
              isPasswordField: true,
              controller: _emailController),
        ),
        Padding(
          padding: context.padding(top: 32, bottom: 24),
          child: MyButton(
            width: context.width,
            onPressed: () => context.router.push(const SignInRoute()),
            title: 'Continue',
          ),
        ),
      ],
    );
  }
}
