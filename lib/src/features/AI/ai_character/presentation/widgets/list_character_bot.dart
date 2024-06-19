import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:flutter/material.dart';

class ListCharacterBot extends StatelessWidget {
  final List<Widget> children;
  final ScrollController? controller;
  const ListCharacterBot({super.key, required this.children, this.controller});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        controller: controller,
        primary: false,
        shrinkWrap: true,
        crossAxisSpacing: context.sizeWidth(12),
        childAspectRatio: 0.62,
        mainAxisSpacing: context.sizeWidth(16),
        crossAxisCount: 2,
        children: children);
  }
}
