import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class CertificateItem extends StatelessWidget {
  const CertificateItem({Key? key}) : super(key: key);

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
                    'Google ADs Certificate',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.bold)
                        .bodyLarge,
                  ),
                  Padding(
                    padding: context.padding(vertical: 5),
                    child: Text(
                      'Jul 2019 - Mar 2024',
                      style: AppFont()
                          .fontTheme(context,
                          color: colorScheme(context).outline)
                          .bodySmall,
                    ),
                  ),
                  Text(
                    "Digital/Multimedia and information Design",
                    maxLines: 2,
                    style: AppFont().fontTheme(context).bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: context.padding(vertical: 8),
          child: const Divider(),
        ),
      ],
    );
  }
}
