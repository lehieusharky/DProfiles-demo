import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class MyLoading extends StatelessWidget {
  const MyLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: MyColor.getWhite,
      strokeWidth: 3,
    );
  }
}
