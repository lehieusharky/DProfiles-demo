import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

import 'app_button.dart';

class AppOutlineButton implements AbstractFactoryAppButton {
  final BuildContext context;
  final Color? iconColor;

  AppOutlineButton(this.context, {this.iconColor});

  @override
  Widget iconButton(
    IconData iconData, {
    VoidCallback? onPressed,
    double? iconSize,
    Color? iconColor,
    Color? backgroundColor,
  }) {
    return IconButton(
      onPressed: onPressed,
      style: const ButtonStyle(),
      color: iconColor,
      iconSize: context.sizeHeight(iconSize ?? 25),
      icon: Icon(
        iconData,
        color: iconColor ?? colorScheme(context).onSurface,
      ),
    );
  }

  @override
  Widget elevatedButton({
    required VoidCallback onPressed,
    required String title,
    Widget? prefixIcon,
    Widget? suffixIcon,
    double? width,
    double? height,
  }) {
    return MyButton(
      backgroundColor: colorScheme(context).background,
      borderColor: colorScheme(context).outlineVariant.withOpacity(0.5),
      onPressed: onPressed,
      title: title,
      width: width,
      height: height,
    );
  }
}
