import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

class MyIconButton extends IconButton {
  final Color? backgroundColor;

  const MyIconButton(
      {super.key,
      this.backgroundColor,
      required super.onPressed,
      required super.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: colorScheme(context).outlineVariant.withOpacity(0.4),
          spreadRadius: 3,
          blurRadius: 10,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: IconButton.filledTonal(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor ?? colorScheme(context).primaryContainer,
          ),
        ),
        onPressed: onPressed,
        padding: context.padding(all: 10),
        icon: icon,
      ),
    );
  }
}
