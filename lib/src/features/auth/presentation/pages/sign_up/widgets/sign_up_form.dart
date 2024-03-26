import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  final TextEditingController controller;
  const SignUpForm({super.key, required this.controller});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthField(
            controller: widget.controller,
            title: 'EMAIL',
            hint: 'Email address',
            keyboardType: TextInputType.emailAddress,
            validator: (email) => email.emailValidation(),
          ),
          Padding(
            padding: context.padding(vertical: 32),
            child: MyButton(
              width: context.width,
              onPressed: () => _signUp(context),
              title: 'Next',
            ),
          ),
        ],
      ),
    );
  }

  void _signUp(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context
          .read<AuthBloc>()
          .add(AuthSendSignUpEmail(widget.controller.text.trim()));
    }
  }
}
