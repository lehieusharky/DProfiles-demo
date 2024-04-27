import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

extension ExperienceModelExt on ExperienceModel {
  Widget toWidget(
    BuildContext context, {
    VoidCallback? onDelete,
    VoidCallback? onUpdate,
  }) {
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
            Assets.images.profile.mockCer.image(),
            Padding(
              padding: context.padding(left: 12),
              child: SizedBox(
                width: context.sizeWidth(170),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (companyName != null)
                      Text(
                        companyName ?? '',
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.bold)
                            .bodyLarge,
                      ),
                    Padding(
                      padding: context.padding(vertical: 5),
                      child: Text(
                        "${startDate.convertToDDMMYYFormat()} - ${endDate.convertToDDMMYYFormat()}",
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodySmall,
                      ),
                    ),
                    if (description != null)
                      Text(
                        description!,
                        maxLines: 3,
                        style: AppFont().fontTheme(context).bodyMedium,
                      ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            if (onUpdate != null)
              Padding(
                padding: context.padding(horizontal: 15),
                child: InkWell(
                    onTap: onUpdate,
                    child: const Icon(IconsaxOutline.edit, size: 20)),
              ),
            if (onDelete != null)
              InkWell(
                  onTap: onDelete,
                  child: const Icon(IconsaxOutline.trash, size: 20)),
          ],
        ),
      ),
    );
  }
}
