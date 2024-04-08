import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/ai_character_page.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/part_ai_features.dart';
import 'package:demo_dprofiles/src/features/home/presentation/pages/home_page.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/page/profile_page.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

import 'dashboard_page.dart';

extension DashboardExtension on DashboardPage {
  List<BottomNavigationBarItem> items(BuildContext context, int currentIndex) =>
      [
        Tuple3(Assets.icons.home.path, appLocal(context).home, 0),
        Tuple3(Assets.icons.aiTools.path, appLocal(context).aiTools, 1),
        Tuple3(Assets.icons.aiCharacter.path, appLocal(context).aiCharacter, 2),
        Tuple3(Assets.icons.profile.path, appLocal(context).profile, 3),
      ]
          .map(
            (e) => BottomNavigationBarItem(
              icon: SvgPicture.asset(e.item1,
                  colorFilter: ColorFilter.mode(
                      currentIndex == e.item3
                          ? colorScheme(context).primary
                          : colorScheme(context).outline,
                      BlendMode.srcIn)),
              label: e.item2,
            ),
          )
          .toList();

  List<Widget> screens() => [
        const HomePage(),
        const AiFeaturesPage(),
        const AiCharacterPage(),
        const ProfilePage(),
      ];
}
