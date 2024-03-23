import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/bottom_navigation_text.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthField(
            title: 'NAME',
            hint: 'Enter your name',
            controller: _nameController),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'EMAIL',
              hint: 'Email address',
              controller: _emailController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'NEW PASSWORD',
              hint: 'Password',
              controller: _newPasswordController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'CONFIRM PASSWORD',
              hint: 'Password',
              controller: _confirmPasswordController),
        ),
        Padding(
          padding: context.padding(top: 8),
          child: const BottomNavigationText(
            content1: 'Forgot your password  ',
            content2: 'Reset password',
            pageRoute: SignUpRoute(),
          ),
        ),
      ],
    );
  }
}
