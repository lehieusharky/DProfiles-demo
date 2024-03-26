import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/sign_up_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_logo.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSendSignUpEmailSuccess) {
            context.router
                .push(VerifySignUpRoute(email: _emailController.text.trim()));
          }

          if (state is AuthError) {
            showErrorDialog(
              context,
              title: 'Send sign up email failed',
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
                      const AuthLogo(),
                      Text(
                        'Get Started',
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.w700)
                            .headlineMedium,
                      ),
                      Text(
                        'by creating a free account.',
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodyMedium,
                      ),
                      const MyDivider(),
                      SignUpForm(controller: _emailController),
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

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }
}
