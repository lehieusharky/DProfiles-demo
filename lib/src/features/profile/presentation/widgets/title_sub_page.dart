import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../theme/assets.gen.dart';

class TitleSubPage extends StatelessWidget {
  final String title;
  final PageRouteInfo<dynamic>? route;
  final VoidCallback? onCallBack;
  final bool? canEdit;

  const TitleSubPage(
      {Key? key,
      required this.title,
      this.route,
      this.onCallBack,
      this.canEdit})
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
        if (canEdit != false)
          IconButton(
            onPressed: () =>
                context.router.push(route!).then((value) => onCallBack!()),
            icon: SvgPicture.asset(Assets.icons.iconEdit.path),
          ),
      ],
    );
  }
}
