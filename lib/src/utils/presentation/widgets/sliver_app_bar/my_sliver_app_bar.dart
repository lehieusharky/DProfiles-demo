import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final double height;
  final EdgeInsetsGeometry? margin;
  const MySliverAppBar(
      {Key? key, required this.child, required this.height, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: margin ?? context.padding(),
      sliver: SliverAppBar(
        automaticallyImplyLeading: false,
        expandedHeight: context.sizeHeight(height),
        flexibleSpace: FlexibleSpaceBar(
          background: child,
        ),
      ),
    );
  }
}
