import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button_extension.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? title;
  final Color? backgroundColor;
  final TextStyle? titleStyle;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? borderWidth;
  final Color? titleColor;
  final VoidCallback? onLongPressed;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? child;

  const MyButton({
    Key? key,
    this.onPressed,
    this.title,
    this.backgroundColor,
    this.titleStyle,
    this.borderColor,
    this.width,
    this.height,
    this.borderRadius,
    this.borderWidth,
    this.titleColor,
    this.onLongPressed,
    this.prefixIcon,
    this.suffixIcon,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? colorScheme(context).primary,
        foregroundColor: backgroundColor == null ? Colors.white : titleColor,
        elevation: 0,
        alignment: Alignment.center,
        fixedSize: fixedSize(context),
        textStyle: textStyle(context),
        shape: shape(context),
      ),
      child: Padding(
        padding: context.padding(vertical: 5),
        child: child ??
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                prefixIcon ?? SizedBox.fromSize(),
                Padding(
                  padding: context.padding(
                      horizontal:
                          prefixIcon == null && suffixIcon == null ? 0 : 5),
                  child: Text(title!),
                ),
                suffixIcon ?? SizedBox.fromSize(),
              ],
            ),
      ),
    );
  }
}
