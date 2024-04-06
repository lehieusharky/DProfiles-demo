import 'package:flutter/material.dart';

abstract class AbstractFactoryAppButton {
  IconButton iconButton({
    VoidCallback? onPressed,
    double? iconSize,
    Color? iconColor,
    Color? backgroundColor,
    Widget? icon,
    IconData? iconData,
  });

  Widget elevatedButton({
    required VoidCallback onPressed,
    required String title,
    Widget? prefixIcon,
    Widget? suffixIcon,
  });
}
