import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_icon_button.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

import 'app_button.dart';

class AppFlatButton implements AbstractFactoryAppButton {
  final BuildContext context;

  AppFlatButton(this.context);

  @override
  MyButton elevatedButton({
    required VoidCallback onPressed,
    required String title,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? backgroundColor,
  }) {
    return MyButton(
      onPressed: onPressed,
      title: title,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      backgroundColor: backgroundColor,
    );
  }

  @override
  IconButton iconButton(
    IconData iconData, {
    VoidCallback? onPressed,
    double? iconSize,
    Color? iconColor,
    Color? backgroundColor,
  }) {
    return MyIconButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      icon: Icon(
        iconData,
        color: iconColor ?? colorScheme(context).onSurface,
        size: iconSize ?? context.sizeHeight(25),
      ),
    );
  }
}
