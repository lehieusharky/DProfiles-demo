import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Assets.images.profile.companyDemo.image(),
            Padding(
              padding: context.padding(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company A',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.bold)
                        .bodyLarge,
                  ),
                  Padding(
                    padding: context.padding(top: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Jul 2019 - Mar 2024',
                          style: AppFont()
                              .fontTheme(context,
                                  color: colorScheme(context).outline)
                              .bodySmall,
                        ),
                        Padding(
                          padding: context.padding(left: 24),
                          child: Text(
                            '3 yrs 3 mths',
                            style: AppFont()
                                .fontTheme(context,
                                    color: colorScheme(context).outline)
                                .bodySmall,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: context.padding(top: 8),
          child: Text(
            "Lead product team at every stages of a product's lifecycle from ideation to product market fit.",
            style: AppFont().fontTheme(context).bodyMedium,
          ),
        ),
        Padding(
          padding: context.padding(vertical: 8),
          child: const Divider(),
        ),
      ],
    );
  }
}
