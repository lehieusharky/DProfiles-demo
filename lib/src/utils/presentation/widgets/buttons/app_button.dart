import 'package:flutter/material.dart';

abstract class AbstractFactoryAppButton {
  Widget iconButton(
    IconData iconData, {
    VoidCallback? onPressed,
    double? iconSize,
    Color? iconColor,
    Color? backgroundColor,
  });

  Widget elevatedButton({
    required VoidCallback onPressed,
    required String title,
    Widget? prefixIcon,
    Widget? suffixIcon,
  });
}
