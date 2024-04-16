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


  List<Widget> screens(ScrollController scrollController) => [
        HomePage(scrollController: scrollController),
        const AiFeaturesPage(),
        const AiCharacterPage(),
        const ProfilePage(),
      ];
}
