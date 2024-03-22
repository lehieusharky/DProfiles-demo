import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class SubOnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const SubOnboardingPage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: context.sizeWidth(350),
          height: context.sizeHeight(350),
          fit: BoxFit.cover,
        ),
        Padding(
          padding: context.padding(bottom: 24),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.w700)
                .headlineMedium,
          ),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: AppFont()
              .fontTheme(context,
                  color: colorScheme(context).outline, weight: FontWeight.w400)
              .bodyMedium,
        ),
      ],
    );
  }
}
