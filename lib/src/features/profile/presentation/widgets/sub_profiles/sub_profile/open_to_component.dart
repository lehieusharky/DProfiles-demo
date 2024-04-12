import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/part_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class OpenToComponent extends StatelessWidget {
  const OpenToComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TitleSubPage(title: 'Open to', route: OpenToWorkRoute()),
        Padding(
          padding: context.padding(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pay',
                style: AppFont()
                    .fontTheme(context,
                        color: colorScheme(context).outline,
                        weight: FontWeight.bold)
                    .bodyLarge,
              ),
              // PartComponent(title: 'Pay per job', icon: ,),
              Container(
                padding: context.padding(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                    color: colorScheme(context).outlineVariant.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Text(
                      'Pay per job',
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.bold)
                          .bodyMedium,
                    ),
                    context.sizedBox(width: 5),
                    Icon(IconsaxBold.shop,
                        color: colorScheme(context).outlineVariant),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
