import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class TitleAiFeatures extends StatelessWidget {
  const TitleAiFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: 24),
      child: Text('AI Tools',
           style:
              AppFont().fontTheme(context, weight: FontWeight.bold).titleSmall),
    );
  }
}
