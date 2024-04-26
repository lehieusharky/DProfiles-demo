import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class MyIconApp extends StatelessWidget {
  const MyIconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.icons.logos.logoHomeApp.svg();
  }
}
