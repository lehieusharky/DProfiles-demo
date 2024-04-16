import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
  final String title;
  const TitleHome({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding(horizontal: 20, bottom: 16),
      child: Text(
        title,
        style: AppFont().fontTheme(context, weight: FontWeight.w600).titleSmall,
      ),
    );
  }
}
