import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthField(
            title: 'ENTER YOUR ACCOUNT EMAIL',
            hint: 'Your email',
            suffixIcon: const Icon(Icons.email_outlined),
            controller: _emailController),
      ],
    );
  }
}
