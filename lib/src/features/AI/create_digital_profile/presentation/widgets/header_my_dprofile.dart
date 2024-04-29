import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class HeaderMyDprofile extends StatelessWidget {
  const HeaderMyDprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: 28, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Digital Profile',
            style: AppFont()
                .fontTheme(context, weight: FontWeight.w600)
                .titleSmall,
          ),
          _buildViewHistoryTitle(context),
        ],
      ),
    );
  }

  Widget _buildViewHistoryTitle(BuildContext context) {
    return InkWell(
      onTap: () =>
          context.router.push(const HistoryUpdateDigitalProfileRoute()),
      child: Row(
        children: [
          Icon(IconsaxOutline.timer_1, color: colorScheme(context).primary),
          context.sizedBox(width: 5),
          Text(
            'View History',
            style: AppFont()
                .fontTheme(context, color: colorScheme(context).primary)
                .bodyMedium,
          ),
        ],
      ),
    );
  }
}
