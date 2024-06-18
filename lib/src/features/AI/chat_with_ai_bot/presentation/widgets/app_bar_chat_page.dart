import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
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
  AICharacterBotModel? _botInfo;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ChatWithAiBloc, ChatWithAiState, AICharacterBotModel?>(
      selector: (state) {
        if (state is ChatWithAIGetChatBotDetailSuccess) {
          _botInfo = state.aiCharacterBot;
        }

        return _botInfo;
      },
      builder: (context, state) {
        if (_botInfo == null) {
          return Container(height: 50);
        } else {
          return InkWell(
            onTap: () => context.router.push(MyAICharacterRoute(
                chatBotID: _botInfo!.id!, isPopularBot: widget.isPopularBot)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildAvatar(context),
                context.sizedBox(width: 5),
                Text(_botInfo!.name.toString(),
                    style: AppFont().fontTheme(context).labelSmall),
              ],
            ),
          );
        }
      },
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return Padding(
      padding: context.padding(right: 15),
      child: (_botInfo!.avatar == null)
          ? CircleAvatar(radius: context.sizeWidth(20))
          : CircleAvatar(
              radius: context.sizeWidth(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: MyCachedImage(
                    imageUrl:
                        'https://d2qzasm1g6lr7.cloudfront.net/${_botInfo!.avatar}'),
              ),
            ),
    );
  }
}
