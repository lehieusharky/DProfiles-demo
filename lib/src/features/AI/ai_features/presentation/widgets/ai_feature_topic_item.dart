import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class AIFeatureItem extends StatelessWidget {
  final Color color;
  final String title;
  final String iconPath;
  final VoidCallback? onPressed;

  const AIFeatureItem({
    Key? key,
    required this.color,
    required this.title,
    required this.iconPath,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: 12),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: context.sizeWidth(161),
          height: context.sizeHeight(141),
          padding: context.padding(all: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                iconPath,
                width: context.sizeWidth(35),
                height: context.sizeHeight(40),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: context.padding(top: 6, right: 5),
                child: Text(
                  title,
                  maxLines: 3,
                  style: AppFont()
                      .fontTheme(context,
                          weight: FontWeight.bold,
                          height: 1.3,
                          color: MyColor.getWhite)
                      .bodyLarge,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
