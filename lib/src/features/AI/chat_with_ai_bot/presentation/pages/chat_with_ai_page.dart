import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/bloc/chat_with_ai_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/widgets/form_chat_ai.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChatWithAiPage extends StatefulWidget {
  final int botId;
  const ChatWithAiPage({Key? key, required this.botId}) : super(key: key);

  @override
  State<ChatWithAiPage> createState() => _ChatWithAiPageState();
}

class _ChatWithAiPageState extends State<ChatWithAiPage> {
  String _botName = '...';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatWithAiBloc>(
      create: (context) => injector.get<ChatWithAiBloc>()
        ..add((ChatWithAILoadBotAI(widget.botId))),
      child: BlocConsumer<ChatWithAiBloc, ChatWithAiState>(
        listener: (context, state) {
          if (state is ChatWithAILoadBotAISuccess) {
            context
                .read<ChatWithAiBloc>()
                .add(ChatWithAIGetChatBotDetail(widget.botId));
          }

          if (state is ChatWithAIGetChatBotDetailSuccess) {
            _botName = state.aiCharacterBot.name ?? '...';
          }
        },
        builder: (context, state) => MyScaffold(
            useAppBar: true,
            canBack: true,
            resizeToAvoidBottomInset: true,
            onBack: () => Navigator.pop(context),
            titleWidget: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(),
                context.sizedBox(width: 10),
                Text(_botName, style: AppFont().fontTheme(context).labelSmall),
              ],
            ),
            body: const FormChatAi()),
      ),
    );
  }
}
