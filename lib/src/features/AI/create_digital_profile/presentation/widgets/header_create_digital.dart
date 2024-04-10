import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

import 'navigation_step_create_digital_profile.dart';

class HeaderCreateDigitalProfile extends StatelessWidget {
  final TabController controller;

  const HeaderCreateDigitalProfile({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.sizeHeight(205),
      padding: context.padding(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(color: colorScheme(context).secondary),
      child: Column(
        children: [
          _buildTitle(context),
          NavigationStepCreateDigitalProfile(controller: controller),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context) =>
      Assets.images.aiFeatures.createAiCharacterIcon
          .image(width: context.sizeWidth(85), fit: BoxFit.cover);

  Widget _buildTitle(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(IconsaxOutline.arrow_left,
                color: MyColor.getWhite, size: 25),
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                      appLocal(context).createDigitalProfileOnTheBlockchain,
                      style: AppFont()
                          .fontTheme(context,
                              weight: FontWeight.w600,
                              height: 1.3,
                              color: MyColor.getWhite)
                          .titleSmall)),
              _buildIcon(context),
            ],
          ),
        ],
      );
}
