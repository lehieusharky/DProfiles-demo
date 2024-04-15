import 'dart:math';

import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/send_message_to_bot_ai_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/message_with_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/domain/entitties/ext_message_with_bot_entity.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/bloc/chat_with_ai_bloc.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FormChatAi extends StatefulWidget {
  final int botId;
  const FormChatAi({Key? key, required this.botId}) : super(key: key);

  @override
  State<FormChatAi> createState() => _FormChatAiState();
}

class _FormChatAiState extends State<FormChatAi> {
  List<MessageWithBotModel> messages = [];

  final _chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatWithAiBloc, ChatWithAiState>(
      listener: (context, state) {
        if (state is ChatWithAISendMessageSuccess) {
          final botMessage = MessageWithBotModel(
              message: state.msg, isUser: false, createAt: _createAt());

          messages.insert(0, botMessage);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Expanded(child: _buildMessageSegment()),
            _buildBottomAction(),
          ],
        );
      },
    );
  }

  Widget _buildBottomAction() {
    return Padding(
      padding: context.padding(horizontal: 10),
      child: Container(
        padding: context.padding(vertical: 10),
        child: Row(
          children: [
            Expanded(child: MyTextFormField(controller: _chatController)),
            context.sizedBox(width: 10),
            AppOutlineButton(context).iconButton(
              iconData: IconsaxOutline.send_2,
              onPressed: () => _sendMessage(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageSegment() {
    return Padding(
      padding: context.padding(horizontal: 20),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        reverse: true,
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          return messages[index].toWidget(context);
        },
      ),
    );
  }

  _sendMessage(BuildContext context) {
    if (_chatController.text.isNotEmpty) {
      SendMessageToBotAIModel data = _createNewMessage();

      _addMessageOfUser();

      context.read<ChatWithAiBloc>().add(ChatWithAISendMessage(data));

      _chatController.clear();
    }
  }

  void _addMessageOfUser() {
    final userMessage = MessageWithBotModel(
        message: _chatController.text.trim(),
        isUser: true,
        createAt: _createAt());

    setState(() => messages.insert(0, userMessage));
  }

  SendMessageToBotAIModel _createNewMessage() {
    final data = SendMessageToBotAIModel(
      message: _chatController.text.trim(),
      sessionId: Random().nextInt(1000),
      chatBotId: widget.botId,
    );
    return data;
  }

  String _createAt() =>
      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
}
