import 'package:auto_route/auto_route.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/my_ai_character/presentation/widgets/avatar_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/tab_bar_chat_history_my_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/view_history_my_character_bot.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MyAICharacterPage extends StatefulWidget {
  final int chatBotID;
  final bool isPopularBot;

  const MyAICharacterPage(
      {super.key, required this.chatBotID, required this.isPopularBot});

  @override
  State<MyAICharacterPage> createState() => _MyAICharacterPageState();
}

class _MyAICharacterPageState extends State<MyAICharacterPage>
    with SingleTickerProviderStateMixin {
  AICharacterBotModel? _botInfo;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<AiCharacterBloc>()
        ..add(AICharacterGetChatBotDetail(
          widget.chatBotID,
          widget.isPopularBot,
        )),
      child: BlocConsumer<AiCharacterBloc, AiCharacterState>(
        listener: (context, state) {
          if (state is AICharacterGetChatBotDetailSuccess) {
            _botInfo = state.characterBotDetail;
          }
        },
        builder: (context, state) {
          return DefaultTabController(
            length: 2,
            child: MyScaffold(
              useAppBar: true,
              canBack: true,
              onBack: () {
                while (context.router.canPop()) {
                  Navigator.pop(context);
                }
              },
              appBarTitle: appLocal(context).myAiCharacter,
              body: (_botInfo == null)
                  ? const MyLoading()
                  : NestedScrollView(
                      headerSliverBuilder:
                          (BuildContext context, bool innerBoxIsScrolled) => [
                        MySliverAppBar(
                          height: context.height * 0.9,
                          child: HeaderMyAICharacter(
                            botInfo: _botInfo!,
                            isPopularBot: widget.isPopularBot,
                          ),
                        ),
                      ],
                      body: Padding(
                        padding: context.padding(
                            horizontal: 20, top: 20, bottom: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _buildViewHistoryTitle(),
                            const TabBarChatHistoryMyAiCharacter(),
                            Expanded(
                                child: ViewHistoryMyCharacterBot(
                                    chatBotID: widget.chatBotID)),
                          ],
                        ),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildViewHistoryTitle() {
    return Text(
      'View Chat History',
      style: AppFont().fontTheme(context, weight: FontWeight.w600).titleSmall,
    );
  }
}
