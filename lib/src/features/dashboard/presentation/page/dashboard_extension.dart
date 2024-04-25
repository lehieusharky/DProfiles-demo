import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/ai_character_page.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/part_ai_features.dart';

import 'package:demo_dprofiles/src/features/home/presentation/pages/import_home_page.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/page/profile_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

import 'dashboard_page.dart';

extension DashboardExtension on DashboardPage {
  List<Widget> screens() => [
        const HomePage(),
        const AiFeaturesPage(),
        const AiCharacterPage(),
        const ProfilePage(),
      ];
}

List<Widget> actionAppbar(
  BuildContext context,
  GlobalKey<ScaffoldState> scaffoldKey,
) =>
    [
      IconButton(
        onPressed: () => _onPressSearch(context),
        icon: const Icon(IconsaxOutline.search_normal_1),
      ),
      IconButton(
          onPressed: () => _onPressMenu(scaffoldKey),
          icon: const Icon(IconsaxOutline.menu_1))
    ];

void _onPressMenu(GlobalKey<ScaffoldState> scaffoldKey) =>
    scaffoldKey.currentState?.openEndDrawer();

void _onPressSearch(BuildContext context) =>
    context.router.push(const SearchHomeRoute());
