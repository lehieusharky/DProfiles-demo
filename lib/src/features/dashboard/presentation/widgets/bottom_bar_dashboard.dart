import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class BottomBarDashboard extends StatelessWidget {
  final int currentTab;
  final void Function(int index) onChangeTab;

  const BottomBarDashboard({
    Key? key,
    required this.currentTab,
    required this.onChangeTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        items: items(context, currentTab),
        currentIndex: currentTab,
        selectedItemColor: colorScheme(context).primary,
        onTap: onChangeTab,
        unselectedItemColor: colorScheme(context).outline,
        selectedLabelStyle: AppFont().fontTheme(context).bodySmall,
        unselectedLabelStyle: AppFont().fontTheme(context).bodySmall,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

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
}
