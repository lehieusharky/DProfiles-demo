import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/message_with_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/domain/entitties/ext_message_with_bot_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';

class YourChatAiCharacterHistory extends StatefulWidget {
  final int chatBotID;
  const YourChatAiCharacterHistory({Key? key, required this.chatBotID})
      : super(key: key);

  @override
  State<YourChatAiCharacterHistory> createState() =>
      _YourChatAiCharacterHistoryState();
}

class _YourChatAiCharacterHistoryState
    extends State<YourChatAiCharacterHistory> {
  List<MessageWithBotModel>? messages;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<AiCharacterBloc>()
        ..add(AICharacterGetChatWithBotHistory(
            chatBotID: widget.chatBotID, page: 1, limit: 10, search: '')),
      child: BlocConsumer<AiCharacterBloc, AiCharacterState>(
        listener: (context, state) {
          if (state is AICharacterGetChatWithBotHistorySuccess) {
            final newData = state.messagesHistory
                .map((e) => MessageWithBotModel(
                      isUser: e.userSenderId != null ? true : false,
                      message: e.content ?? '',
                      createAt: DateFormat('yyyy-MM-dd HH:mm:ss')
                          .format(DateTime.parse(e.createdOn!)),
                    ))
                .toList();

            messages = newData;
          }
        },
        builder: (context, state) {
          if (messages == null) {
            return const MyShimmer(count: 2, height: 300);
          } else {
            return AnimationLimiter(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: messages!.length,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    delay: const Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: const Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: FadeInAnimation(
                        curve: Curves.fastLinearToSlowEaseIn,
                        duration: const Duration(milliseconds: 2500),
                        child: messages![index].toWidget(context),
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
