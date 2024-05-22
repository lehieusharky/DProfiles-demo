import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/cubit/forgot_password_cubit.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthField(
          title:  appLocal(context).enterYourAccountEmail.toUpperCase(),
          hint: appLocal(context).yourEmail,
          suffixIcon: const Icon(Icons.email_outlined),
          controller: cubit.emailController,
        ),
      ],
    );
  }
}
