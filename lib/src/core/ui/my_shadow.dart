import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

class MyShadow extends StatelessWidget {
  final Widget child;
  const MyShadow({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: colorScheme(context).outlineVariant.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 10,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
    );
  }
}
