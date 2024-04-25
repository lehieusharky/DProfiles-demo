import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/bloc/chat_with_ai_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/widgets/app_bar_chat_page.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/widgets/form_chat_ai.dart';
import 'package:demo_dprofiles/src/utils/services/tts_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChatWithAiPage extends StatefulWidget {
  final int botId;
  final bool isPopularBot;

  const ChatWithAiPage({
    Key? key,
    required this.botId,
    required this.isPopularBot,
  }) : super(key: key);

  @override
  State<ChatWithAiPage> createState() => _ChatWithAiPageState();
}

class _ChatWithAiPageState extends State<ChatWithAiPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatWithAiBloc>(
      create: (context) => injector.get<ChatWithAiBloc>()
        ..add((ChatWithAILoadBotAI(widget.botId))),
      child: BlocConsumer<ChatWithAiBloc, ChatWithAiState>(
        listener: (context, state) {
          if (state is ChatWithAILoadBotAISuccess) {
            context.read<ChatWithAiBloc>().add(
                ChatWithAIGetChatBotDetail(widget.botId, widget.isPopularBot));
          }

          if (state is ChatWithAIGetChatBotDetailSuccess) {
            context.read<ChatWithAiBloc>().add(ChatWithAIGetChatWithBotHistory(
                chatBotID: widget.botId, page: 1, limit: 10, search: ''));
          }
        },
        builder: (context, state) => MyScaffold(
            useAppBar: true,
            canBack: true,
            resizeToAvoidBottomInset: true,
            onBack: () {
              Navigator.pop(context);
              TtsService().stopSpeaking();
            },
            titleWidget: AppBarChatPage(isPopularBot: widget.isPopularBot),
            body: FormChatAi(botId: widget.botId)),
      ),
    );
  }
}
