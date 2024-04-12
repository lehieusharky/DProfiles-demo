import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:flutter/material.dart';

class MyPointUser extends StatelessWidget {
  final ScrollController controller;
  final List<Widget> children;
  final double width;
  final double height;
  final double itemExtent;
  final double? diameterRatio;
  final void Function(int)? onSelectedItemChanged;
  const MyPointUser(
      {Key? key,
      required this.controller,
      required this.children,
      required this.width,
      required this.height,
      required this.itemExtent,
      this.diameterRatio,
      this.onSelectedItemChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizeHeight(height),
      width: context.sizeWidth(width),
      child: ListWheelScrollView.useDelegate(
        itemExtent: context.sizeHeight(itemExtent),
        controller: controller,
        scrollBehavior: const ScrollBehavior(),
        physics: const NeverScrollableScrollPhysics(),
        diameterRatio: diameterRatio ?? 1,
        clipBehavior: Clip.antiAlias,
        useMagnifier: true,
        onSelectedItemChanged: onSelectedItemChanged,
        childDelegate: ListWheelChildLoopingListDelegate(children: children),
      ),
    );
  }
}
