import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/my_ai_character/avatar_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/my_ai_character/view_chat_history.dart';

import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyAICharacterPage extends StatelessWidget {
  const MyAICharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      canBack: true,
      appBarTitle: appLocal(context).myAiCharacter,
      action: [
        IconButton(onPressed: () {}, icon: const Icon(IconsaxOutline.menu_1)),
      ],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AvatarAICharacter(),
          Padding(
            padding: context.padding(top: 36, horizontal: 20),
            child: const ViewChatHistory(),
          ),
        ],
      ),
    );
  }
}
