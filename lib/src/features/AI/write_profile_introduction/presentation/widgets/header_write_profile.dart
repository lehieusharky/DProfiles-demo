import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class HeaderWriteProfile extends StatelessWidget {
  const HeaderWriteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTitle(context),
          _buildWallet(context),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          appLocal(context).aiFeatures,
          style:
              AppFont().fontTheme(context, weight: FontWeight.bold).titleSmall,
        ),
        Padding(
          padding: context.padding(top: 8),
          child: Text(
            appLocal(context).writeYourProfileIntroduction,
            style: AppFont().fontTheme(context).bodyLarge,
          ),
        ),
      ],
    );
  }

  Widget _buildWallet(BuildContext context) {
    return Container(
      padding: context.padding(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          color: colorScheme(context).outlineVariant.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Text(
            '100',
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .bodyMedium,
          ),
          context.sizedBox(width: 5),
          const Icon(IconsaxBold.wallet_2)
        ],
      ),
    );
  }
}
