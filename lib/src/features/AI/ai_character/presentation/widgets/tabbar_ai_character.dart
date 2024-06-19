import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBarAICharacter extends StatelessWidget {
  const TabBarAICharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 67, vertical: 8),
      child: Container(
        height: context.sizeHeight(40),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(120)),
        child: TabBar(
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: MyColor.getWhite,
          unselectedLabelStyle: AppFont().fontTheme(context, weight: FontWeight.w700).bodyLarge,
          unselectedLabelColor: Colors.black,
          onTap: (value) => _onChange(context, value),
          labelStyle: AppFont()
              .fontTheme(context,
                  color: MyColor.getWhite, weight: FontWeight.w700)
              .bodyLarge,
          indicator: BubbleTabIndicator(
            indicatorHeight: context.sizeHeight(32),
            insets: context.padding(horizontal: 3),
            indicatorColor: Colors.black,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
          ),
          tabs: [appLocal(context).explore, appLocal(context).following].map((e) => _buildTab(e)).toList(),
        ),
      ),
    );
  }

  Widget _buildTab(String title) {
    return Text(title);
  }

  _onChange(BuildContext context, int value) {
    if (value == 0) {
      context
          .read<AiCharacterBloc>()
          .add(const GetListPopularCharacterBot(page: 1));
    } else {
      context.read<AiCharacterBloc>().add(const GetListCharacterBot());
    }
  }
}
