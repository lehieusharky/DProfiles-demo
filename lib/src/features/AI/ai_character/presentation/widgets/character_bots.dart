import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/list_popular_bot.dart';
import 'package:flutter/material.dart';

import 'list_following_bot.dart';

class CharacterBots extends StatelessWidget {
  const CharacterBots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        ListPopularBot(),
        ListFollowingBot(),
      ],
    );
  }
}
