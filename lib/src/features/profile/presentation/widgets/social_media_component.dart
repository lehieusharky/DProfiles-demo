import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class SocialMediaComponent extends StatelessWidget {
  const SocialMediaComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Social Media',
            style:
                AppFont().fontTheme(context, weight: FontWeight.bold).bodyLarge,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                IconsaxOutline.camera,
                weight: context.sizeWidth(12),
              ),
              Padding(
                padding: context.padding(horizontal: 16),
                child: Icon(
                  IconsaxOutline.camera,
                  weight: context.sizeWidth(12),
                ),
              ),
              Icon(
                IconsaxOutline.camera,
                weight: context.sizeWidth(12),
              ),
              Padding(
                padding: context.padding(horizontal: 16),
                child: Icon(
                  IconsaxOutline.camera,
                  weight: context.sizeWidth(12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
