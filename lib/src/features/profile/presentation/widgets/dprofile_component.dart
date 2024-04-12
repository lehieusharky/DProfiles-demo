import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class DProfileComponent extends StatelessWidget {
  const DProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'dProfile',
            style:
                AppFont().fontTheme(context, weight: FontWeight.bold).bodyLarge,
          ),
          InkWell(
            onTap: () => context.router.push(const CreateDigitalProfileRoute()),
            child: Container(
              padding: context.padding(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  color: colorScheme(context).outlineVariant.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Text(
                    'Create dProfile',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.bold)
                        .bodyMedium,
                  ),
                  context.sizedBox(width: 5),
                  Icon(
                    IconsaxBold.personalcard,
                    color: colorScheme(context).primary,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
