import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class MyMessageModel {
  final String message;
  final bool? isUser;
  final String dateTime;

  MyMessageModel({required this.message, this.isUser, required this.dateTime});
}

class MyMessage extends StatelessWidget {
  final MyMessageModel messageModel;

  const MyMessage({super.key, required this.messageModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(
          bottom: 30,
          right: messageModel.isUser == true ? 0 : 50,
          left: messageModel.isUser == true ? 50 : 0),
      child: Column(
        crossAxisAlignment: messageModel.isUser == true
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: messageModel.isUser == true
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Material(
                  borderRadius: BorderRadius.only(
                    topLeft: messageModel.isUser == true
                        ? const Radius.circular(12)
                        : Radius.zero,
                    bottomLeft: const Radius.circular(12),
                    topRight: messageModel.isUser == true
                        ? Radius.zero
                        : const Radius.circular(12),
                    bottomRight: const Radius.circular(12),
                  ),
                  color: messageModel.isUser == true
                      ? colorScheme(context).primary
                      : MyColor.get777E90,
                  child: Padding(
                    padding: context.padding(vertical: 10, horizontal: 12),
                    child: Text(
                      messageModel.message,
                      maxLines: 100,
                      style: AppFont()
                          .fontTheme(context, color: MyColor.getWhite)
                          .bodyMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
          context.sizedBox(height: 8),
          Text(
            messageModel.dateTime,
            style: AppFont()
                .fontTheme(context, color: colorScheme(context).outline)
                .bodySmall,
          )
        ],
      ),
    );
  }

  factory MyMessage.userMessage(MyMessageModel messageModel) {
    return MyMessage(messageModel: messageModel);
  }

  factory MyMessage.botMessage(MyMessageModel messageModel) {
    return MyMessage(messageModel: messageModel);
  }
}
