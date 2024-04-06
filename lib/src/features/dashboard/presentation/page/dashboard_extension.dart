import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tuple/tuple.dart';

import 'dashboard_page.dart';

extension DashboardExtension on DashboardPage {
  List<PersistentBottomNavBarItem>? items(BuildContext context) => [
        const Tuple2(IconsaxOutline.home, 'Home'),
        const Tuple2(IconsaxOutline.wallet, 'My Wallet'),
        const Tuple2(IconsaxOutline.magic_star, 'AI Features'),
        const Tuple2(IconsaxOutline.user, 'Profile'),
        const Tuple2(IconsaxOutline.setting, 'Setting'),
      ]
          .map((e) => PersistentBottomNavBarItem(
              icon: Icon(e.item1),
              title: e.item2,
              activeColorSecondary: colorScheme(context).secondary,
              textStyle: AppFont().fontTheme(context).bodyLarge,
              activeColorPrimary: colorScheme(context).primary,
              inactiveColorPrimary: colorScheme(context).outline))
          .toList();
}
