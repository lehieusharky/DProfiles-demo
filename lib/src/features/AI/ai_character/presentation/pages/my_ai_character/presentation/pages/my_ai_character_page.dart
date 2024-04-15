import 'package:auto_route/auto_route.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/my_ai_character/presentation/widgets/avatar_ai_character.dart';

import 'package:ficonsax/ficonsax.dart';
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
        ..add(
            AICharacterGetChatBotDetail(widget.chatBotID, widget.isPopularBot)),
      child: BlocConsumer<AiCharacterBloc, AiCharacterState>(
        listener: (context, state) {
          if (state is AICharacterGetChatBotDetailSuccess) {
            _botInfo = state.characterBotDetail;
          }
        },
        builder: (context, state) {
          return MyScaffold(
            useAppBar: true,
            canBack: true,
            onBack: () {
              while (context.router.canPop()) {
                Navigator.pop(context);
              }
            },
            appBarTitle: appLocal(context).myAiCharacter,
            action: [
              IconButton(
                  onPressed: () {}, icon: const Icon(IconsaxOutline.menu_1)),
            ],
            body: (_botInfo == null)
                ? const MyLoading()
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AvatarAICharacter(
                          name: _botInfo!.name ?? '',
                          shortDescription:
                              _botInfo!.definition!.longDescription ?? "",
                          longDescription:
                              _botInfo!.definition!.shortDescription ?? '',
                          greeting: _botInfo!.definition!.greeting ?? '',
                          id: _botInfo!.id,
                          isPopularBot: widget.isPopularBot,
                        ),
                        // Padding(
                        //   padding: context.padding(top: 36, horizontal: 20),
                        //   child: const ViewChatHistory(),
                        // ),
                        // Padding(
                        //   padding: context.padding(left: 20, right: 70, top: 32),
                        //   child: Container(
                        //     height: context.sizeHeight(54),
                        //     padding: context.padding(vertical: 12),
                        //     child: TabBar(
                        //       controller: _tabController,
                        //       dividerColor: Colors.transparent,
                        //       indicatorSize: TabBarIndicatorSize.tab,
                        //       labelColor: MyColor.getWhite,
                        //       unselectedLabelStyle: AppFont()
                        //           .fontTheme(context,
                        //               color: colorScheme(context).onTertiary)
                        //           .bodyMedium,
                        //       labelStyle: AppFont().fontTheme(context).bodyMedium,
                        //       indicator: BubbleTabIndicator(
                        //         indicatorHeight: context.sizeHeight(35),
                        //         insets: context.padding(horizontal: 0),
                        //         indicatorColor: colorScheme(context).primary,
                        //         tabBarIndicatorSize: TabBarIndicatorSize.tab,
                        //       ),
                        //       tabs: const [
                        //         Text('Your AI Character'),
                        //         Text('Others'),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: context.padding(horizontal: 20, top: 20),
                        //   child: SizedBox(
                        //     height: context.sizeHeight(200),
                        //     child: TabBarView(
                        //       controller: _tabController,
                        //       children: const [
                        //         Text('Chat with AI Character'),
                        //         Text('Others'),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
