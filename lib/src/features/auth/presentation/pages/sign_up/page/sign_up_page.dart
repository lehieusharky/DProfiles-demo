import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/ext_sign_up_page.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/sign_up_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_logo.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_title.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(context),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          handleSignUpState(state, context);
        },
        child: MyScaffold(
          horizontalMargin: 32,
          useAppBar: true,
          canBack: true,
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              AuthLogo(),
              AuthTitle(title: appLocal(context).getStarted),
              Text(
                appLocal(context).byCreatingAFreeAccount,
                style: AppFont()
                    .fontTheme(context, color: colorScheme(context).outline)
                    .bodyMedium,
              ),
              const MyDivider(),
              const SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
