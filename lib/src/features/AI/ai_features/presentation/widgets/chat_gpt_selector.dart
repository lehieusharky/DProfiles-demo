import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_chat_gpt.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';

class ChatGPTSelector extends StatelessWidget {
  final TabController controller;
  const ChatGPTSelector({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 60, vertical: 8, top: 5),
      child: Container(
        height: context.sizeHeight(45),
        padding: context.padding(all: 6),
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
            labelStyle: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .bodyMedium,
            onTap: (index) async => await sharePreference.setChatGPTVersion(
                index == 0 ? SupportedChatGPT.gpt_3_5 : SupportedChatGPT.gpt_4),
            indicator: BubbleTabIndicator(
              indicatorHeight: context.sizeHeight(35),
              insets: context.padding(horizontal: 0),
              indicatorColor: colorScheme(context).background,
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
            ),
            tabs: SupportedChatGPT.values.map((e) => _buildTab(e)).toList()),
      ),
    );
  }

  Widget _buildTab(SupportedChatGPT type) {
    return Text(type.toTitle());
  }
}
