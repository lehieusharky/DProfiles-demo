import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
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
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Form(
          key: _keyForm,
          child: Column(
            children: [
              AuthField(
                  controller: _emailController,
                  title: 'EMAIL',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (email) => email.emailValidation(),
                  hint: 'Email address'),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _passwordController,
                  isPasswordField: true,
                  title: 'PASSWORD',
                  validator: (password) => password.passwordValidation(),
                  hint: 'Password',
                ),
              ),
              _buildForgotPassword(),
              Padding(
                padding: context.padding(vertical: 32),
                child: AppFlatButton(context).elevatedButton(
                  width: context.width,
                  onPressed: () => _signIn(context),
                  title: 'Login',
                  child: state is AuthLoading ? const MyLoading() : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _signIn(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(AuthSignIn(
          _emailController.text.trim(), _passwordController.text.trim()));
    }
  }

  Widget _buildForgotPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Forgot your password?',
          style: AppFont()
              .fontTheme(
                context,
                weight: FontWeight.w700,
                color: colorScheme(context).onBackground,
              )
              .bodyMedium,
        ),
        TextButton(
            onPressed: () => context.router.push(const ForgotPasswordRoute()),
            child: Text(
              'Reset password',
              style: AppFont()
                  .fontTheme(
                    context,
                    weight: FontWeight.w700,
                    color: colorScheme(context).primary,
                  )
                  .bodyMedium,
            )),
      ],
    );
  }
}
