import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyCreateAccount extends StatelessWidget {
  final bool isAgree;
  final void Function(bool? value)? onChanged;

  const PrivacyCreateAccount(
      {super.key, required this.isAgree, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
            value: isAgree,
            visualDensity: VisualDensity.compact,
            checkColor: colorScheme(context).background,
            activeColor: colorScheme(context).primary,
            fillColor: MaterialStateProperty.all(isAgree
                ? colorScheme(context).primary
                : colorScheme(context).outlineVariant),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            side: MaterialStateBorderSide.resolveWith((states) =>
                const BorderSide(width: 1.0, color: Colors.transparent)),
            onChanged: onChanged),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: appLocal(context).bySigningUpIAgree,
                  style: AppFont()
                      .fontTheme(
                        context,
                        weight: FontWeight.w400,
                        color: colorScheme(context).outline,
                      )
                      .bodyMedium,
                ),
                TextSpan(
                  text: appLocal(context).privacyPolicy,
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
}
