import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/page/ext_sign_in_page.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/widgets/sign_in_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_logo.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_title.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/bottom_navigation_text.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          widget.handleSignInState(state, context);
        },
        child: MyScaffold(
          horizontalMargin: 32,
          body: Stack(
            children: [
              Column(
                children: [
                  const AuthLogo(),
                  const AuthTitle(title: 'Login'),
                  const MyDivider(),
                  const SignInForm(),
                  BottomNavigationText(
                    content1: "Don’t have an account?  ",
                    content2: 'SignUp',
                    onPressed: () => context.router.push(const SignUpRoute()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
