import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _emailController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSendSignUpEmailSuccess) {
          context.router.push(const VerifySignUpRoute());
        }
      },
      child: Form(
        key: _keyForm,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthField(
              controller: _emailController,
              title: 'EMAIL',
              hint: 'Email address',
              keyboardType: TextInputType.emailAddress,
              validator: (email) {
                if (email != null && email.isNotEmpty) {
                  return null;
                }

                return 'Email is not valid';
              },
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
      ),
    );
  }

  void _signUp(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(const AuthSendSignUpEmail());
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }
}
