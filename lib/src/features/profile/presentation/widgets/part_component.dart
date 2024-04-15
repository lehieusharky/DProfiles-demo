import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class PartComponent extends StatelessWidget {
  final String title;
  final Widget icon;
  final TextStyle? titleStyle;
  final Color? titleColor;
  final Color? backgroundColor;

  const PartComponent({
    Key? key,
    required this.title,
    required this.icon,
    this.titleStyle,
    this.titleColor, this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
          color: backgroundColor ??  colorScheme(context).outlineVariant.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Text(
            title,
            style: titleStyle ??
                AppFont()
                    .fontTheme(context,
                        color: titleColor, weight: FontWeight.bold)
                    .bodyMedium,
          ),
          context.sizedBox(width: 5),
          icon,
        ],
      ),
    );
  }
}
