import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/cubit/update_new_password_cubit.dart';

class UpdateNewPasswordForm extends StatefulWidget {
  const UpdateNewPasswordForm({Key? key}) : super(key: key);

  @override
  State<UpdateNewPasswordForm> createState() => _UpdateNewPasswordFormState();
}

class _UpdateNewPasswordFormState extends State<UpdateNewPasswordForm> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UpdateNewPasswordCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthField(
            title: 'EMAIL',
            hint: 'Your email',
            controller: cubit.emailController),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'NEW PASSWORD',
              hint: 'Password',
              isPasswordField: true,
              controller: cubit.passwordController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'CONFIRM PASSWORD',
              hint: 'Password',
              isPasswordField: true,
              controller: cubit.confirmPasswordController),
        ),
        Padding(
          padding: context.padding(top: 32, bottom: 24),
          child: _buildSubmitButton(context),
        ),
      ],
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final cubit = context.read<UpdateNewPasswordCubit>();
    return BlocBuilder<UpdateNewPasswordCubit, UpdateNewPasswordState>(
      builder: (context, state) {
        return MyButton(
          width: context.width,
          enabled: state.submitEnabled,
          onPressed: () => cubit.resetPassword(),
          title: 'Continue',
        );
      },
    );
  }
}
