import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class FreelancerLanguageProfile extends StatelessWidget {
  final String title;
  final String nationality;
  final String available;

  const FreelancerLanguageProfile(
      {Key? key,
      required this.title,
      required this.nationality,
      required this.available})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(IconsaxOutline.global, color: colorScheme(context).outline),
        Padding(
          padding: context.padding(left: 8),
          child: Text(
            'Freelancer',
            style: AppFont()
                .fontTheme(context,
                    weight: FontWeight.bold,
                    color: colorScheme(context).outline)
                .bodyMedium,
          ),
        ),
        Padding(
          padding: context.padding(horizontal: 12),
          child: Text(
            '|',
            style: AppFont()
                .fontTheme(context,
                    weight: FontWeight.bold,
                    color: colorScheme(context).outline)
                .bodyMedium,
          ),
        ),

        Assets.images.profile.usFlag.svg(),

        Padding(
          padding: context.padding(left: 8),
          child: Text(
            nationality,
            style: AppFont()
                .fontTheme(context,
                    weight: FontWeight.bold,
                    color: colorScheme(context).outline)
                .bodyMedium,
          ),
        ),

        Padding(
          padding: context.padding(horizontal: 24),
          child: Text(
            '|',
            style: AppFont()
                .fontTheme(context,
                    weight: FontWeight.bold,
                    color: colorScheme(context).outline)
                .bodyMedium,
          ),
        ),
        Assets.images.profile.dot.svg(),
        Padding(
          padding: context.padding(left: 8),
          child: Text(
            'Available',
            style: AppFont()
                .fontTheme(context,
                    weight: FontWeight.bold,
                    color: colorScheme(context).outline)
                .bodyMedium,
          ),
        ),
      ],
    );
  }
}
