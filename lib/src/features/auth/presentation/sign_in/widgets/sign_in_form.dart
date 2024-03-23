import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthField(
            controller: _emailController,
            title: 'EMAIL',
            hint: 'Email address'),
        Padding(
            padding: context.padding(top: 32),
            child: AuthField(
                controller: _passwordController,
                title: 'PASSWORD',
                hint: 'Password')),
        Padding(
          padding: context.padding(vertical: 32),
          child: MyButton(
            width: context.width,
            onPressed: () => context.router.push(const DashboardRoute()),
            title: 'Login',
          ),
        ),
      ],
    );
  }
}
