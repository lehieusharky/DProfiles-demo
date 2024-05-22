import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/my_ai_character/presentation/widgets/your_chat_ai_character_history.dart';
import 'package:flutter/material.dart';

class ViewHistoryMyCharacterBot extends StatelessWidget {
  final int chatBotID;
  const ViewHistoryMyCharacterBot({Key? key, required this.chatBotID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        YourChatAiCharacterHistory(chatBotID: chatBotID),
         Text(appLocal(context).others),
      ],
    );
  }
}
