import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

class MyLoading extends StatelessWidget {
  const MyLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorScheme(context).outlineVariant.withOpacity(0.1),
      ),
      width: context.width,
      height: context.height,
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}
