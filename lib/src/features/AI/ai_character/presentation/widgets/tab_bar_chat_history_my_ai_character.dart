import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class TabBarChatHistoryMyAiCharacter extends StatelessWidget {
  const TabBarChatHistoryMyAiCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(right: 50, top: 32),
      child: Container(
        height: context.sizeHeight(54),
        padding: context.padding(vertical: 12),
        child: TabBar(
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: MyColor.getWhite,
          unselectedLabelStyle: AppFont()
              .fontTheme(context, color: colorScheme(context).onTertiary)
              .bodyMedium,
          labelStyle: AppFont().fontTheme(context).bodyMedium,
          indicator: BubbleTabIndicator(
            indicatorHeight: context.sizeHeight(35),
            insets: context.padding(horizontal: 0),
            indicatorColor: colorScheme(context).primary,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
          ),
          tabs: const [
            Text('Your AI Character'),
            Text('Others'),
          ],
        ),
      ),
    );
  }
}