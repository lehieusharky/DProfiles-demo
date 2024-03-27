import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/create_account_model.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/create_account_form.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class CreateAnAccountPage extends StatefulWidget {
  final String email;

  const CreateAnAccountPage({Key? key, required this.email}) : super(key: key);

  @override
  State<CreateAnAccountPage> createState() => _CreateAnAccountPageState();
}

class _CreateAnAccountPageState extends State<CreateAnAccountPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  bool _isAgreePolicy = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthCreateAnAccountSuccess) {
            context.router.push(const SignUpSuccessRoute());
          }

          if (state is AuthError) {
            showErrorDialog(
              context,
              title: state.title ?? 'Create an account failed',
              description: state.message,
            );
          }
        },
        builder: (context, state) {
          return MyScaffold(
            horizontalMargin: 32,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: context.padding(top: 5, bottom: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.icons.logos.dGreyProfileGreenLogo.svg(),
                            context.sizedBox(width: 9),
                            Assets.icons.logos.dGreyProfileGreen.svg(),
                          ],
                        ),
                      ),
                      Text(
                        'Create an account',
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.w700)
                            .headlineMedium,
                      ),
                      Padding(
                        padding: context.padding(vertical: 32),
                        child: Divider(
                          thickness: 1,
                          color: colorScheme(context).outlineVariant,
                        ),
                      ),
                      CreateAccountForm(
                        usernameController: _usernameController,
                        passwordController: _passwordController,
                        keyForm: _keyForm,
                        confirmPasswordController: _confirmPasswordController,
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: _buildPrivacy(),
                      ),
                      Padding(
                        padding: context.padding(vertical: 32),
                        child: MyButton(
                          backgroundColor: _isAgreePolicy
                              ? colorScheme(context).primary
                              : colorScheme(context).outlineVariant,
                          titleColor: colorScheme(context).background,
                          width: context.width,
                          onPressed: !_isAgreePolicy
                              ? null
                              : () => _createAnAccount(context),
                          title: 'Create Account',
                        ),
                      ),
                    ],
                  ),
                ),
                if (state is AuthLoading)
                  SizedBox(
                    width: context.width,
                    height: context.height,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _createAnAccount(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(
            AuthCreateAccount(
              CreateAccountModel(
                walletAddress: const Uuid().v4(),
                username: _usernameController.text.trim(),
                password: _passwordController.text.trim(),
                email: widget.email,
              ),
            ),
          );
    }
  }

  Widget _buildPrivacy() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: _isAgreePolicy,
          visualDensity: VisualDensity.compact,
          checkColor: colorScheme(context).background,
          activeColor: colorScheme(context).primary,
          fillColor: MaterialStateProperty.all(_isAgreePolicy
              ? colorScheme(context).primary
              : colorScheme(context).outlineVariant),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          side: MaterialStateBorderSide.resolveWith((states) =>
              const BorderSide(width: 1.0, color: Colors.transparent)),
          onChanged: (value) {
            setState(() {
              _isAgreePolicy = !_isAgreePolicy;
            });
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'By signing up I agree that I’m 18 years of age or older, to the ',
                  style: AppFont()
                      .fontTheme(
                        context,
                        weight: FontWeight.w400,
                        color: colorScheme(context).outline,
                      )
                      .bodyMedium,
                ),
                TextSpan(
                  text: 'Privacy & Policy',
                  style: AppFont()
                      .fontTheme(context,
                          color: colorScheme(context).onBackground,
                          weight: FontWeight.bold)
                      .bodyMedium,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.router.push(const SignUpRoute()),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }
}
