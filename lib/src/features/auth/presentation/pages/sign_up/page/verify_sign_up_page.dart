import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';

import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/ext_sign_up_page.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/pinput_verify_email_code.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_logo.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_title.dart';

import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/gestures.dart';
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
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          widget.handleVerifySignUpState(state, context);
        },
        builder: (context, state) {
          return MyScaffold(
            horizontalMargin: 32,
            body: Stack(
              children: [
                Column(
                  children: [
                    const AuthLogo(),
                    const AuthTitle(title: 'Enter your security code'),
                    Padding(
                      padding:
                          context.padding(horizontal: 20, top: 32, bottom: 12),
                      child: Text(
                        'Please enter the 6-digit code sent to your email for verification',
                        textAlign: TextAlign.center,
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodyMedium,
                      ),
                    ),
                    PinPutVerifyEmailCode(
                      onCompleted: (pin) => context
                          .read<AuthBloc>()
                          .add(AuthValidateSignUpCode(widget.email, pin)),
                    ),
                    Padding(
                      padding: context.padding(top: 28),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Didn’t receive any code?    ',
                              style: AppFont()
                                  .fontTheme(
                                    context,
                                    weight: FontWeight.w700,
                                    color: colorScheme(context).onBackground,
                                  )
                                  .bodyMedium,
                            ),
                            TextSpan(
                              text: 'Resend Again',
                              style: AppFont()
                                  .fontTheme(context,
                                      color: colorScheme(context).outline,
                                      weight: FontWeight.w700)
                                  .bodyMedium,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => context
                                    .read<AuthBloc>()
                                    .add(AuthResendSignUpEmail(widget.email)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: context.padding(top: 12),
                      child: Text(
                        'Request new code in ${formatTime(initCountDownValue)}',
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodyMedium,
                      ),
                    ),
                  ],
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
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (initCountDownValue > 0) {
          initCountDownValue--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = (minutes < 10) ? '0$minutes' : '$minutes';
    String secondsStr =
        (remainingSeconds < 10) ? '0$remainingSeconds' : '$remainingSeconds';
    return '$minutesStr:$secondsStr';
  }
}
