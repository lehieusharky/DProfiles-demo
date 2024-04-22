import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_bottom_sheet.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/message_with_bot_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:demo_dprofiles/src/utils/services/app_clipboard_service.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:tuple/tuple.dart';

extension MessageWithBotExt on MessageWithBotModel {
  Widget toGesWidget(BuildContext context) {
    return GestureDetector(
        onTap: () => _showMenuActions(context), child: toWidget(context));
  }

  void _showMenuActions(BuildContext context) => showMyBottomSheet<String>(
        context: context,
        child: Padding(
          padding: context.padding(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tuple2(
                IconsaxOutline.copy,
                () async => await AppClipboardService()
                    .copyTextToClipboard(message)
                    .whenComplete(() => Navigator.pop(context, 'copy')),
              ),
              Tuple2(
                IconsaxOutline.timer_start,
                () async => await AppClipboardService()
                    .copyTextToClipboard(message)
                    .whenComplete(() => Navigator.pop(context, 'copy')),
              ),
            ]
                .map((e) => IconButton(
                      onPressed: e.item2,
                      icon: Icon(e.item1),
                    ))
                .toList(),
          ),
        ),
      ).then((value) {
        if (value == 'copy') {
          toastification.show(
            context: context,
            style: ToastificationStyle.simple,
            autoCloseDuration: const Duration(seconds: 1),
            title: const Text('Copied'),
            alignment: Alignment.bottomCenter,
            direction: TextDirection.ltr,
            animationDuration: const Duration(milliseconds: 300),
            animationBuilder: (context, animation, alignment, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            icon: const Icon(Icons.check),
            primaryColor: colorScheme(context).primary,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            padding: context.padding(horizontal: 12, vertical: 8),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color(0x07000000),
                blurRadius: 16,
                offset: Offset(0, 16),
                spreadRadius: 0,
              )
            ],
            applyBlurEffect: true,
          );
        }
      });

  Widget toWidget(BuildContext context) {
    final isMessageOfUser = isUser == true;

    return Padding(
      padding: context.padding(
          bottom: 30,
          right: _marginRight(isMessageOfUser),
          left: _marginLeft(isMessageOfUser)),
      child: Column(
        crossAxisAlignment: _positionCreateAt(isMessageOfUser),
        children: [
          Row(
            mainAxisAlignment: _positionMessage(isMessageOfUser),
            children: [
              Flexible(child: _buildMessage(context, isMessageOfUser)),
            ],
          ),
          context.sizedBox(height: 8),
          _buildTime(context),
        ],
      ),
    );
  }

  Widget _buildMessage(BuildContext context, bool isMessageOfUser) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: _borderTopLeft(isMessageOfUser),
        bottomLeft: const Radius.circular(12),
        topRight: _borderTopRight(isMessageOfUser),
        bottomRight: const Radius.circular(12),
      ),
      color: _colorMessage(context, isMessageOfUser),
      child: Padding(
        padding: context.padding(vertical: 10, horizontal: 12),
        child: Text(
          message,
          maxLines: 100,
          style:
              AppFont().fontTheme(context, color: MyColor.getWhite).bodyMedium,
        ),
      ),
    );
  }

  Widget _buildTime(BuildContext context) {
    return Text(
      createAt,
      style: AppFont()
          .fontTheme(context, color: colorScheme(context).outline)
          .bodySmall,
    );
  }

  double _marginRight(bool isUser) => isUser ? 0 : 50;

  double _marginLeft(bool isUser) => isUser ? 50 : 0;

  CrossAxisAlignment _positionCreateAt(bool isUser) =>
      isUser == true ? CrossAxisAlignment.end : CrossAxisAlignment.start;

  MainAxisAlignment _positionMessage(bool isUser) =>
      isUser == true ? MainAxisAlignment.end : MainAxisAlignment.start;

  Radius _borderTopLeft(bool isUser) =>
      isUser ? const Radius.circular(12) : Radius.zero;

  Radius _borderTopRight(bool isUser) =>
      isUser ? Radius.zero : const Radius.circular(12);

  Color _colorMessage(BuildContext context, bool isUser) =>
      isUser ? colorScheme(context).primary : MyColor.get777E90;
}
