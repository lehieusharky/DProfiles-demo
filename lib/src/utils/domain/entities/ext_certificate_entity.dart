import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/data/models/certificate_model.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

extension CertificateModelExt on CertificateModel {
  Widget toItem(BuildContext context) {
    return Padding(
      padding: context.padding(top: 6),
      child: Container(
        padding: context.padding(all: 12),
        decoration: BoxDecoration(
            color: colorScheme(context).outlineVariant.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: colorScheme(context).outlineVariant.withOpacity(0.5))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.profile.companyDemo.image(),
            Padding(
              padding: context.padding(left: 12),
              child: SizedBox(
                width: context.sizeWidth(170),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (name != null)
                      Text(
                        name!,
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.bold)
                            .bodyLarge,
                      ),
                    Padding(
                      padding: context.padding(vertical: 5),
                      child: Text(
                        date ?? 'Jul 2019 - Mar 2024',
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodySmall,
                      ),
                    ),
                    Text(
                      "Digital/Multimedia and information Design",
                      maxLines: 3,
                      style: AppFont().fontTheme(context).bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: context.padding(horizontal: 15),
              child: const Icon(IconsaxOutline.edit, size: 20),
            ),
            const Icon(IconsaxOutline.trash, size: 20),
          ],
        ),
      ),
    );
  }
}
