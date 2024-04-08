import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class AIFeatureTopicItem extends StatelessWidget {
  final Color color;
  final String title;
  final String iconPath;
  final VoidCallback? onPressed;
  final PageRouteInfo<dynamic> route;

  const AIFeatureTopicItem({
    Key? key,
    required this.color,
    required this.title,
    required this.iconPath,
    this.onPressed,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(route),
      child: Container(
        padding: context.padding(all: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              iconPath,
              width: context.sizeWidth(45),
              height: context.sizeHeight(36),
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
    );
  }
}
