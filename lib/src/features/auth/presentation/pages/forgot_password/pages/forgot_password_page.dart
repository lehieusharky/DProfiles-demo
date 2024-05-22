import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/common/simple_status/simple_state_status.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/cubit/forgot_password_cubit.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/widgets/forgot_password_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_logo.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/bottom_navigation_text.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ForgotPasswordCubit(),
      child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {
          switch (state.status) {
            case SimpleStateStatus.initial:
            case SimpleStateStatus.loading:
              break;
            case SimpleStateStatus.success:
              context.router.push(const VerifyEmailForgotPasswordRoute());
              break;
            case SimpleStateStatus.failure:
              showErrorDialog(
                context,
                title: appLocal(context).error,
                description: appLocal(context).forgotPasswordFailed,
              );
              break;
          }
        },
        builder: (BuildContext context, ForgotPasswordState state) =>
            _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      heightAppBar: 50,
      topPadding: 20,
      canBack: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthLogo(),
            BottomNavigationText(
              content1: appLocal(context).dontHaveAnAccount,
              content2: appLocal(context).signupForFree,
              onPressed: () => context.router.push(const SignUpRoute()),
            ),
            Padding(
              padding: context.padding(top: 80, bottom: 32),
              child: Text(
                appLocal(context).forgotPassword,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.w700)
                    .headlineMedium,
              ),
            ),
            Text(
              appLocal(context).enterEmailToResetPassword,
              textAlign: TextAlign.center,
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodyMedium,
            ),
            Padding(
              padding: context.padding(vertical: 32),
              child: Divider(
                thickness: 0.5,
                color: colorScheme(context).outlineVariant,
              ),
            ),
            const ForgotPasswordForm(),
            _buildSubmitButton(context),
            Text(
              appLocal(context).nevermindIGotIt,
              textAlign: TextAlign.center,
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.bold)
                  .bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();
    return Padding(
      padding: context.padding(top: 32, bottom: 24),
      child: BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
        builder: (context, state) {
          return MyButton(
            width: context.width,
            enabled: state.submitEnabled,
            onPressed: () => cubit.requestResetPassword(),
            title: appLocal(context).continueButton,
          );
        },
      ),
    );
  }
}
