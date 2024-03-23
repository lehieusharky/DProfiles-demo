import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  final String title;
  const SkillItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(right: 8, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: colorScheme(context).outlineVariant.withOpacity(0.2),
        ),
        padding: context.padding(horizontal: 12, vertical: 8),
        child: Text(
          title,
          style: AppFont().fontTheme(context, weight: FontWeight.bold).bodyMedium,
        ),
      ),
    );
  }
}
