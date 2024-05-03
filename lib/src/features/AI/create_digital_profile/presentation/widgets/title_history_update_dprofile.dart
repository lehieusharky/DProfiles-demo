import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleHistoryUpdateDProfile extends StatelessWidget {
  const TitleHistoryUpdateDProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(vertical: 16),
      child: Row(
        children: [
          SizedBox(
              width: context.width * 0.3, child: _buildTitle(context, 'ID')),
          SizedBox(
              width: context.width * 0.3, child: _buildTitle(context, 'Time')),
          const Spacer(),
          _buildTitle(context, 'Change')
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Text(
      title,
      style: AppFont().fontTheme(context, weight: FontWeight.w600).bodyMedium,
    );
  }
}
