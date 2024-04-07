import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

enum ChatGPTTypes { gpt_3_5, gpt_4 }

extension ChatGPTTypesExt on ChatGPTTypes {
  String toTitle() {
    return switch (this) {
      ChatGPTTypes.gpt_3_5 => 'GPT-3.5',
      ChatGPTTypes.gpt_4 => 'GPT-4',
    };
  }
  int toIndex() {
    return switch (this) {
      ChatGPTTypes.gpt_3_5 => 0,
      ChatGPTTypes.gpt_4 => 1,
    };
  }
}

class ChatGPTSelector extends StatelessWidget {
  final TabController controller;
  const ChatGPTSelector({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 60, vertical: 8),
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
            onTap: (index) {

            },
            indicator: BubbleTabIndicator(
              indicatorHeight: context.sizeHeight(35),
              insets: context.padding(horizontal: 0),
              indicatorColor: colorScheme(context).background,
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
            ),
            tabs: [
              ChatGPTTypes.gpt_3_5,
              ChatGPTTypes.gpt_4,
            ].map((e) => _buildTab(e)).toList()),
      ),
    );
  }

  Widget _buildTab(ChatGPTTypes type) {
    return Text(type.toTitle());
  }
}
