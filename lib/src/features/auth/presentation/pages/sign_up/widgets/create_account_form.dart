import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class CreateAccountForm extends StatefulWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final GlobalKey keyForm;

  const CreateAccountForm(
      {Key? key,
      required this.usernameController,
      required this.passwordController,
      required this.keyForm,
      required this.confirmPasswordController})
      : super(key: key);

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  final ScrollController _scrollController = ScrollController();
  var newPasswordKey = GlobalKey();
  var confirmPasswordKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.keyForm,
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthField(
                title: 'NAME',
                hint: 'Enter your name',
                textInputAction: TextInputAction.next,
                validator: (name) =>
                    name != null && name.isNotEmpty ? null : 'Wrong username',
                controller: widget.usernameController),
            Padding(
              padding: context.padding(top: 32),
              child: AuthField(
                  title: 'NEW PASSWORD',
                  hint: 'Password',
                  key: newPasswordKey,
                  textInputAction: TextInputAction.next,
                  onTap: () => _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease),
                  isPasswordField: true,
                  validator: (password) =>
                      password != null && password.isNotEmpty
                          ? null
                          : 'Wrong password type',
                  controller: widget.passwordController),
            ),
            Padding(
              padding: context.padding(top: 32),
              child: AuthField(
                  title: 'CONFIRM PASSWORD',
                  hint: 'Password',
                  key: confirmPasswordKey,
                  isPasswordField: true,
                  onTap: () => Scrollable.ensureVisible(
                        confirmPasswordKey.currentContext!,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                      ),
                  textInputAction: TextInputAction.send,
                  validator: (password) => password != null &&
                          password.isNotEmpty &&
                          widget.passwordController.text ==
                              widget.confirmPasswordController.text
                      ? null
                      : 'Wrong password type',
                  controller: widget.confirmPasswordController),
            ),
          ],
        ),
      ),
    );
  }
}
