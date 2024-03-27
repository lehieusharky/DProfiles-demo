import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_color_scheme.dart';

class CryptoWalletPage extends StatelessWidget {
  const CryptoWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: context.padding(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Asset',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.w600)
                      .bodyMedium,
                ),
                Text(
                  'Total balance',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.w600)
                      .bodyMedium,
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, _) {
                    return _buildTokenRowInfo(context);
                  }))
        ],
      ),
    );
  }

  Widget _buildTokenRowInfo(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Assets.images.myWallet.btc.image(width: 35, height: 35),
            Padding(
              padding: context.padding(left: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'USDT',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.w600)
                        .bodyMedium,
                  ),
                  Padding(
                    padding: context.padding(top: 3),
                    child: Text(
                      'Tether USDT',
                      style: AppFont()
                          .fontTheme(context,
                              weight: FontWeight.w400,
                              color: colorScheme(context).outline)
                          .bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0.2785689852 BTC',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.w600)
                      .bodyMedium,
                ),
                Padding(
                  padding: context.padding(top: 3),
                  child: Text(
                    '\$10,098.36',
                    style: AppFont()
                        .fontTheme(context,
                            weight: FontWeight.w400,
                            color: colorScheme(context).outline)
                        .bodyMedium,
                  ),
                ),
              ],
            ),
          ],
        ),
        MyDivider(
          padding: context.padding(top: 16, bottom: 12),
        ),
      ],
    );
  }
}
