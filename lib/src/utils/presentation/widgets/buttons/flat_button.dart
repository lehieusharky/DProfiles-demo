import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_icon_button.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

import 'app_button.dart';

class AppFlatButton implements AbstractFactoryAppButton {
  final BuildContext context;

  AppFlatButton(this.context);

  @override
  MyButton elevatedButton({
    VoidCallback? onPressed,
    required String title,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? backgroundColor,
    double? width,
    double? height,
    Widget? child,
    Color? titleColor,
  }) {
    return MyButton(
      onPressed: onPressed,
      title: title,
      width: width,
      height: height ?? context.sizeHeight(45),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      backgroundColor: backgroundColor,
      titleColor: titleColor,
      child: child,
    );
  }

  @override
  IconButton iconButton({
    VoidCallback? onPressed,
    double? iconSize,
    Color? iconColor,
    Color? backgroundColor,
    Widget? icon,
    IconData? iconData,
    double? width,
    double? height,
  }) {
    return MyIconButton(
      width: width ?? context.sizeWidth(50),
      height: height ?? context.sizeWidth(50),
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? colorScheme(context).primary,
      icon: icon ??
          Icon(
            iconData,
            color: iconColor ?? MyColor.getWhite,
            size: context.sizeHeight(iconSize ?? 25),
          ),
    );
  }
}
