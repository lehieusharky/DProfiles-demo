import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/ai_character_page.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/part_ai_features.dart';
import 'package:demo_dprofiles/src/features/home/presentation/pages/home_page.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/page/profile_page.dart';
import 'package:flutter/material.dart';

import 'dashboard_page.dart';

extension DashboardExtension on DashboardPage {


  List<Widget> screens(ScrollController scrollController) => [
        HomePage(scrollController: scrollController),
        const AiFeaturesPage(),
        const AiCharacterPage(),
        const ProfilePage(),
      ];
}
