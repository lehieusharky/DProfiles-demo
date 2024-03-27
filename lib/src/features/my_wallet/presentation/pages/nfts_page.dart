import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class NftsPage extends StatelessWidget {
  const NftsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, _) {
          return _buildNFTsItem(context);
        });
  }

  Widget _buildNFTsItem(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 12),
            child: Assets.images.myWallet.nftDemo.image(),
          ),
          Text(
            'Auto technology',
            style:
                AppFont().fontTheme(context, weight: FontWeight.w600).bodyLarge,
          ),
          Padding(
            padding: context.padding(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.w600)
                      .bodyMedium,
                ),
                Text(
                  '\$10,098.36',
                  style: AppFont()
                      .fontTheme(context,
                          color: colorScheme(context).outline,
                          weight: FontWeight.w600)
                      .bodyMedium,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Author',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.w600)
                    .bodyMedium,
              ),
              Text(
                'Dean',
                style: AppFont()
                    .fontTheme(context,
                        color: colorScheme(context).outline,
                        weight: FontWeight.w600)
                    .bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
