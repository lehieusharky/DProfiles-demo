import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showToast(BuildContext context, String title) {
  toastification.show(
    context: context,
    style: ToastificationStyle.simple,
    autoCloseDuration: const Duration(seconds: 1),
    title: Text(title),
    alignment: Alignment.bottomCenter,
    direction: TextDirection.ltr,
    animationDuration: const Duration(milliseconds: 300),
    animationBuilder: (context, animation, alignment, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    icon: const Icon(Icons.check),
    primaryColor: colorScheme(context).primary,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    padding: context.padding(horizontal: 12, vertical: 8),
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        color: Color(0x07000000),
        blurRadius: 16,
        offset: Offset(0, 16),
        spreadRadius: 0,
      )
    ],
    applyBlurEffect: true,
  );
}
