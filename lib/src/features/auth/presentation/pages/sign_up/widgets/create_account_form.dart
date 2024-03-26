import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class CreateAccountForm extends StatefulWidget {
  const CreateAccountForm({Key? key}) : super(key: key);

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthField(
            title: 'NAME',
            hint: 'Enter your name',
            controller: _emailController),
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
      ],
    );
  }
}
