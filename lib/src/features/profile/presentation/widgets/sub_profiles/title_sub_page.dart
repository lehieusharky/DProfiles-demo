import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class TitleSubPage extends StatelessWidget {
  final String title;
  final PageRouteInfo<dynamic> route;

  const TitleSubPage({Key? key, required this.title, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              AppFont().fontTheme(context, weight: FontWeight.bold).labelMedium,
        ),
        IconButton(
          onPressed: () => context.router.push(route),
          icon: Icon(
            IconsaxBold.edit_2,
            color: colorScheme(context).outlineVariant,
          ),
        ),
      ],
    );
  }
}
