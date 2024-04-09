import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ViewChatHistory extends StatelessWidget {
  const ViewChatHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          appLocal(context).viewChatHistory,
          style:
              AppFont().fontTheme(context, weight: FontWeight.w600).titleSmall,
        ),
      ],
    );
  }
}
