import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  AuthLogo({Key? key}) : super(key: key);

  final _isDarkMode = sharePreference.isDarkMode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(top: 5, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.logos.dWhitePWhite.svg(),
          context.sizedBox(width: 9),
          _isDarkMode
              ? Assets.icons.logos.dGreyProfileGreen.svg()
              : Assets.icons.logos.dprofilesBlack.svg(),
        ],
      ),
    );
  }
}
