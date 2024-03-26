import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/pinput_verify_email_code.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VerifySignUpPage extends StatefulWidget {
  const VerifySignUpPage({Key? key}) : super(key: key);

  @override
  State<VerifySignUpPage> createState() => _VerifySignUpPageState();
}

class _VerifySignUpPageState extends State<VerifySignUpPage> {
  int _countDown = 120;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      body: Column(
        children: [
          Padding(
            padding: context.padding(top: 5, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.logos.dWhitePWhite.svg(),
                context.sizedBox(width: 9),
                Assets.icons.logos.dprofilesBlack.svg(),
              ],
            ),
          ),
          Text(
            'Enter your security code',
            textAlign: TextAlign.center,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.w700)
                .headlineMedium,
          ),
          Padding(
            padding: context.padding(horizontal: 20, top: 32, bottom: 12),
            child: Text(
              'Please enter the 6-digit code sent to your email for verification',
              textAlign: TextAlign.center,
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodyMedium,
            ),
          ),
          PinPutVerifyEmailCode(
            onCompleted: (pin) =>
                context.router.push(const CreateAnAccountRoute()),
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
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: context.padding(top: 12),
            child: Text(
              'Request new code in 01:59s',
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
