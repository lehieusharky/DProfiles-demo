import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomNavigationText extends StatelessWidget {
  final String content1;
  final String content2;
  final VoidCallback? onPressed;
  const BottomNavigationText(
      {Key? key,
      required this.content1,
      required this.content2,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: content1,
            style: AppFont()
                .fontTheme(
                  context,
                  weight: FontWeight.w700,
                  color: colorScheme(context).onBackground,
                )
                .bodyMedium,
          ),
          TextSpan(
            text: content2,
            style: AppFont()
                .fontTheme(context,
                    color: colorScheme(context).primary,
                    weight: FontWeight.w700)
                .bodyMedium,
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
