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
  final bool enabled;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;

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
    this.enabled = true,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.min,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      onLongPress: enabled ? onLongPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? colorScheme(context).primary,
        foregroundColor: backgroundColor == null ? Colors.white : titleColor,
        elevation: 0,
        alignment: Alignment.center,
        fixedSize: fixedSize(context),
        textStyle: textStyle(context),
        shape: shape(context),
      ),
      child: child != null
          ? Padding(padding: context.padding(vertical: 3), child: child)
          : Opacity(
              opacity: enabled ? 1.0 : 0.5,
              child: Padding(
                padding: context.padding(vertical: 5),
                child: Row(
                  mainAxisSize: mainAxisSize,
                  mainAxisAlignment: mainAxisAlignment,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    prefixIcon ?? SizedBox.fromSize(),
                    Padding(
                      padding: context.padding(
                          horizontal:
                              prefixIcon == null && suffixIcon == null ? 0 : 5),
                      child: Text(
                        title!,
                        style: enabled
                            ? titleStyle
                            : titleStyle?.copyWith(color: Colors.grey),
                      ),
                    ),
                    suffixIcon ?? SizedBox.fromSize(),
                  ],
                ),
              ),
            ),
    );
  }
}
