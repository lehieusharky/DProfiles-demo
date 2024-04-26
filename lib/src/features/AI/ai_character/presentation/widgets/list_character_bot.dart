import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:flutter/material.dart';

class ListCharacterBot extends StatelessWidget {
  final List<Widget> children;
  const ListCharacterBot({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        shrinkWrap: true,
        crossAxisSpacing: context.sizeWidth(12),
        childAspectRatio: 0.7,
        mainAxisSpacing: context.sizeWidth(16),
        crossAxisCount: 2,
        children: children);
  }
}
