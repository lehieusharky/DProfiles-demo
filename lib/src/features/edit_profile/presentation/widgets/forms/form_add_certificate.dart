import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';


class FormAddCertificate extends StatefulWidget {
  const FormAddCertificate({Key? key}) : super(key: key);

  @override
  State<FormAddCertificate> createState() => _FormAddCertificateState();
}

class _FormAddCertificateState extends State<FormAddCertificate> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
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
            padding: context.padding(top: 32),
            child: AuthField(
              controller: _passwordController,
              isPasswordField: true,
              title: appLocal(context).password.toUpperCase(),
              textInputAction: TextInputAction.done,
              validator: (password) => password.passwordValidation(context),
              hint: appLocal(context).password,
            ),
          ),
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
    if (_keyForm.currentState?.validate() ?? false) {}
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}
