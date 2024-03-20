import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

import 'my_button.dart';

extension MyButtonExtension on MyButton {
  Size? fixedSize(BuildContext context) => width == null
      ? null
      : Size(
          context.sizeWidth(width!),
          context.sizeHeight(height ?? 48),
        );

  OutlinedBorder shape(BuildContext context) => RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(context.sizeWidth(borderRadius ?? 90)),
        side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: context.sizeWidth(width ?? 1)),
      );

  TextStyle? textStyle(BuildContext context) =>
      titleStyle ?? AppFont().fontTheme(context).labelMedium;
}
