import 'dart:math';

import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/chat_with_ai_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/bloc/chat_with_ai_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/widgets/message_component.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FormChatAi extends StatefulWidget {
  const FormChatAi({Key? key}) : super(key: key);

  @override
  State<FormChatAi> createState() => _FormChatAiState();
}

class _FormChatAiState extends State<FormChatAi> {
  List<MyMessageModel> chats = [];

  final _chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatWithAiBloc, ChatWithAiState>(
      listener: (context, state) {
        if (state is ChatWithAISendMessageSuccess) {
          chats.add(MyMessageModel(
              message: state.msg,
              isUser: false,
              dateTime:
                  DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now())));
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: Padding(
                  padding: context.padding(horizontal: 20),
                  child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MyMessage(messageModel: chats[index]);
                    },
                  )),
            ),
            Padding(
              padding: context.padding(horizontal: 10),
              child: Container(
                padding: context.padding(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: MyTextFormField(controller: _chatController)),
                    context.sizedBox(width: 10),
                    AppOutlineButton(context).iconButton(
                      iconData: IconsaxOutline.send_2,
                      onPressed: () => _sendMessage(context),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  _sendMessage(BuildContext context) {
    if (_chatController.text.isNotEmpty) {
      final data = ChatWIthAIModel(
        message: _chatController.text.trim(),
        sessionId: Random().nextInt(1000),
        chatBotId: 36,
      );

      setState(() {
        chats.add(MyMessageModel(
            message: _chatController.text.trim(),
            isUser: true,
            dateTime:
                DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now())));
      });

      context.read<ChatWithAiBloc>().add(ChatWithAISendMessage(data));

      _chatController.clear();
    }
  }
}
