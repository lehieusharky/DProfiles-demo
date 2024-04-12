import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/privacy_create_account.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountForm extends StatefulWidget {
  final String email;
  final bool isAgree;
  final void Function(bool?)? onChanged;

  const CreateAccountForm(
      {Key? key, required this.email, this.onChanged, required this.isAgree})
      : super(key: key);

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
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
              title: appLocal(context).name.toUpperCase(),
              hint: appLocal(context).enterYourName,
              autoFocus: true,
              textInputAction: TextInputAction.next,
              validator: (name) => name != null && name.isNotEmpty
                  ? null
                  : appLocal(context).userNameCannotBeEmpty,
              controller: _usernameController),
          Padding(
            padding: context.padding(top: 32),
            child: AuthField(
                title: appLocal(context).newPassword.toUpperCase(),
                hint: appLocal(context).password,
                textInputAction: TextInputAction.next,
                isPasswordField: true,
                validator: (password) => password.passwordValidation(context),
                controller: _passwordController),
          ),
          Padding(
            padding: context.padding(top: 32),
            child: AuthField(
                title: appLocal(context).confirmPassword.toUpperCase(),
                hint: appLocal(context).password,
                isPasswordField: true,
                textInputAction: TextInputAction.done,
                validator: (password) {
                  if (password == null || password.isEmpty) {
                    return appLocal(context).passwordCannotBeEmpty;
                  } else if (_passwordController.text !=
                      _confirmPasswordController.text) {
                    return appLocal(context).confirmPasswordIsNotMatch;
                  } else {
                    return null;
                  }
                },
                controller: _confirmPasswordController),
          ),
          Padding(
              padding: context.padding(top: 32),
              child: PrivacyCreateAccount(
                  isAgree: widget.isAgree, onChanged: widget.onChanged)),
          Padding(
            padding: context.padding(vertical: 32),
            child: AppFlatButton(context).elevatedButton(
              backgroundColor: widget.isAgree
                  ? colorScheme(context).primary
                  : colorScheme(context).outlineVariant,
              titleColor: colorScheme(context).background,
              width: context.width,
              onPressed:
                  !widget.isAgree ? null : () => _createAnAccount(context),
              title: appLocal(context).createAccount,
            ),
          ),
        ],
      ),
    );
  }

  void _createAnAccount(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      final newAccount = CreateAccountModel(
        username: _usernameController.text.trim(),
        password: _passwordController.text.trim(),
        email: widget.email,
      );
      context.read<AuthBloc>().add(AuthCreateAccount(newAccount));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }
}
