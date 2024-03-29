import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class TabBarWriteProfile extends StatelessWidget {
  final TabController controller;
  const TabBarWriteProfile({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 60, vertical: 8),
      child: Container(
        height: context.sizeHeight(45),
        padding: context.padding(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
            color: colorScheme(context).secondary,
            borderRadius: BorderRadius.circular(100)),
        child: TabBar(
          controller: controller,
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: colorScheme(context).onBackground,
          unselectedLabelStyle: AppFont().fontTheme(context).bodyMedium,
          unselectedLabelColor: colorScheme(context).outline,
          labelStyle:
              AppFont().fontTheme(context, weight: FontWeight.bold).bodyMedium,
          indicator: BubbleTabIndicator(
            indicatorHeight: context.sizeHeight(32),
            insets: context.padding(horizontal: 0),
            indicatorColor: colorScheme(context).background,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
          ),
          tabs: const [
            Text('GPT-3.5'),
            Text('GPT-4'),
          ],
        ),
      ),
    );
  }
}
