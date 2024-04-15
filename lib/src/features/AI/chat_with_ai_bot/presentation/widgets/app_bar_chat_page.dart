import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/bloc/chat_with_ai_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarChatPage extends StatefulWidget {
  final bool isPopularBot;
  const AppBarChatPage({Key? key, required this.isPopularBot})
      : super(key: key);

  @override
  State<AppBarChatPage> createState() => _AppBarChatPageState();
}

class _AppBarChatPageState extends State<AppBarChatPage> {
  String _botName = '...';
  int? id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatWithAiBloc, ChatWithAiState>(
      listener: (context, state) {
        if (state is ChatWithAIGetChatBotDetailSuccess) {
          id = state.aiCharacterBot.id;
          _botName = state.aiCharacterBot.name ?? '...';
        }
      },
      builder: (context, state) {
        return InkWell(
          onTap: () => context.router.push(MyAICharacterRoute(
              chatBotID: id!, isPopularBot: widget.isPopularBot)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(),
              context.sizedBox(width: 10),
              Text(_botName, style: AppFont().fontTheme(context).labelSmall),
            ],
          ),
        );
      },
    );
  }
}
