import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';

import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/ext_verify_sign_up_code.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/pinput_verify_email_code.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/resend_code_sign_up.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_logo.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_title.dart';

import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/extensions/int_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class VerifySignUpPage extends StatefulWidget {
  final String email;
  const VerifySignUpPage({Key? key, required this.email}) : super(key: key);

  @override
  State<VerifySignUpPage> createState() => _VerifySignUpPageState();
}

class _VerifySignUpPageState extends State<VerifySignUpPage> {
  late Timer timer;
  int initCountDownValue = 120;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(context),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          widget.handleVerifySignUpState(state, context);
        },
        builder: (context, state) {
          return MyScaffold(
            horizontalMargin: 32,
            useAppBar: true,
            canBack: true,
            body: Stack(
              children: [
                Column(
                  children: [
                    AuthLogo(),
                    AuthTitle(title: appLocal(context).enterYourSecurityCode),
                    Padding(
                      padding:
                          context.padding(horizontal: 20, top: 32, bottom: 12),
                      child: Text(
                        appLocal(context)
                            .pleaseEnterThe6DigitCodeSentToYourEmailForVerification,
                        textAlign: TextAlign.center,
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodyMedium,
                      ),
                    ),
                    PinPutVerifyEmailCode(
                        onCompleted: (code) => _verifyCode(code, context)),
                    ResendCodeSignUp(email: widget.email),
                    Padding(
                      padding: context.padding(top: 12),
                      child: Text(
                        '${appLocal(context).requestNewCodeIn} ${initCountDownValue.formatTimeWithSecond()}',
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodyMedium,
                      ),
                    ),
                  ],
                ),
                if (state is AuthLoading) const MyLoading()
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (initCountDownValue > 0) {
          initCountDownValue--;
        } else {
          _resendCode();
          initCountDownValue = 120;
          timer.cancel();
        }
      });
    });
  }

  void _resendCode() =>
      context.read<AuthBloc>().add(AuthResendSignUpEmail(widget.email));

  void _verifyCode(String code, BuildContext context) =>
      context.read<AuthBloc>().add(AuthValidateSignUpCode(widget.email, code));
}
