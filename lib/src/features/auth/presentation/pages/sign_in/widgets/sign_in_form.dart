import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/widgets/forgot_password_sign_in.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late TextEditingController _emailController;
  final _passwordController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final recentEmail = sharePreference.getRecentEmailSignIn();

    _emailController = TextEditingController(text: recentEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(
        children: [
          AuthField(
              autoFocus: true,
              controller: _emailController,
              title: appLocal(context).email.toUpperCase(),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (email) => email.emailValidation(context),
              hint: appLocal(context).emailAddress),
          Padding(
            padding: context.padding(top: 32, bottom: 5),
            child: AuthField(
              controller: _passwordController,
              isPasswordField: true,
              title: appLocal(context).password.toUpperCase(),
              textInputAction: TextInputAction.done,
              validator: (password) => password.passwordValidation(context),
              hint: appLocal(context).password,
            ),
          ),
          const ForgotPasswordSignIn(),
          Padding(
            padding: context.padding(vertical: 32),
            child: AppFlatButton(context).elevatedButton(
              width: context.width,
              onPressed: () => _signIn(context),
              title: appLocal(context).login,
            ),
          ),
        ],
      ),
    );
  }

  void _signIn(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(AuthSignIn(
          _emailController.text.trim(), _passwordController.text.trim()));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}
