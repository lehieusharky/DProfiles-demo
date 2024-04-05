import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';

import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
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
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Form(
          key: _keyForm,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthField(
                autoFocus: true,
                controller: _emailController,
                title: appLocal(context).email.toUpperCase(),
                hint: appLocal(context).emailAddress,
                keyboardType: TextInputType.emailAddress,
                validator: (email) => email.emailValidation(context),
              ),
              Padding(
                padding: context.padding(vertical: 32),
                child: AppFlatButton(context).elevatedButton(
                  width: context.width,
                  onPressed: () => _signUp(context),
                  title: appLocal(context).nextButton,
                  child: state is AuthLoading ? const MyLoading() : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _signUp(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context
          .read<AuthBloc>()
          .add(AuthSendSignUpEmail(_emailController.text.trim()));
    }
  }
}
