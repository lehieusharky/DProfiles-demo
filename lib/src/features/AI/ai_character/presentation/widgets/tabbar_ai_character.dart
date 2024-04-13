import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class TabBarAICharacter extends StatelessWidget {
  final TabController controller;
  const TabBarAICharacter({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 60, vertical: 8),
      child: Container(
        height: context.sizeHeight(45),
        padding: context.padding(all: 6),
        decoration: BoxDecoration(
            border: Border.all(
              color: colorScheme(context).primary,
            ),
            borderRadius: BorderRadius.circular(120)),
        child: TabBar(
          controller: controller,
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: MyColor.getWhite,
          unselectedLabelStyle: AppFont().fontTheme(context).bodyLarge,
          unselectedLabelColor: colorScheme(context).outline,
          labelStyle: AppFont()
              .fontTheme(context,
                  color: MyColor.getWhite, weight: FontWeight.bold)
              .bodyLarge,
          indicator: BubbleTabIndicator(
            indicatorHeight: context.sizeHeight(35),
            insets: context.padding(horizontal: 0),
            indicatorColor: colorScheme(context).primary,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
          ),
          tabs: ['Explore', 'Created'].map((e) => _buildTab(e)).toList(),
        ),
      ),
    );
  }

  Widget _buildTab(String title) {
    return Text(title);
  }
}
