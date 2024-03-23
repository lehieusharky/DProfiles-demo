import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class WalletId extends StatelessWidget {
  const WalletId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(top: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your wallet ID',
                style: AppFont()
                    .fontTheme(context,
                        weight: FontWeight.w400,
                        color: colorScheme(context).outline)
                    .bodySmall,
              ),
              Text(
                'Change wallet',
                style: AppFont()
                    .fontTheme(context,
                        weight: FontWeight.w500,
                        color: colorScheme(context).primary)
                    .bodySmall,
              ),
            ],
          ),
          Padding(
            padding: context.padding(top: 8),
            child: Container(
              decoration: BoxDecoration(
                  color: colorScheme(context).outlineVariant.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(48)),
              padding: context.padding(vertical: 10, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '123...AJSL',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.bold)
                        .bodyMedium,
                  ),
                  Assets.icons.logos.copyIcon.svg(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
