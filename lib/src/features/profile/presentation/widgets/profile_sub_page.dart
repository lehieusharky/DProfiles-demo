import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class ProfileSubPage extends StatelessWidget {
  const ProfileSubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Open to',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.bold)
                  .labelMedium,
            ),
            Icon(
              IconsaxBold.edit_2,
              color: colorScheme(context).outlineVariant,
            ),
          ],
        ),
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
        Padding(
          padding: context.padding(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Salary',
                style: AppFont()
                    .fontTheme(context,
                        color: colorScheme(context).outline,
                        weight: FontWeight.bold)
                    .bodyLarge,
              ),
              Container(
                padding: context.padding(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                    color: colorScheme(context).outlineVariant.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Text(
                      '\$100,00/Hours',
                      style: AppFont()
                          .fontTheme(context,
                              color: colorScheme(context).primary,
                              weight: FontWeight.bold)
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
        Padding(
          padding: context.padding(vertical: 8),
          child: const Divider(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'About',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.bold)
                  .labelMedium,
            ),
            Icon(
              IconsaxBold.edit_2,
              color: colorScheme(context).outlineVariant,
            ),
          ],
        ),
        Padding(
          padding: context.padding(top: 8),
          child: Text(
            "Professional Product Management in Fintech/Crypto/Web3.0/Social Network/Ecommerce, lead product team at every stages of a product's lifecycle from ideation to product market fit.",
            style: AppFont().fontTheme(context).bodyLarge,
          ),
        ),
      ],
    );
  }
}
