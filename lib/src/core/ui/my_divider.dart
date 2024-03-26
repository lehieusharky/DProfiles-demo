import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double? verticalMargin;
  final double? thickness;
  final Color? color;

  const MyDivider({
    Key? key,
    this.verticalMargin,
    this.thickness,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(vertical: verticalMargin ?? 32),
      child: Divider(
        thickness: verticalMargin ?? 1,
        color: color ?? colorScheme(context).outlineVariant,
      ),
    );
  }
}
