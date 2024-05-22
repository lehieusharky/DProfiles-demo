import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/my_wallet/presentation/pages/crypto_wallet_page.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

import 'nfts_page.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({Key? key}) : super(key: key);

  @override
  State<MyWalletPage> createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      action: [
        IconButton(
          onPressed: () {},
          icon: const Icon(IconsaxOutline.notification),
        ),
        Padding(
          padding: context.padding(horizontal: 5),
          child: const CircleAvatar(radius: 15),
        ),
        Padding(
          padding: context.padding(right: 5),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(IconsaxOutline.menu_1),
          ),
        ),
      ],
      titleWidget: Assets.icons.logos.myWalletLogo.svg(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: context.padding(horizontal: 16),
              child: Container(
                padding: context.padding(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appLocal(context).overview,
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.bold)
                          .titleSmall,
                    ),
                    Padding(
                      padding: context.padding(top: 20, bottom: 8),
                      child: Text(
                        appLocal(context).totalBalance,
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.bold)
                            .bodyMedium,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '0.27894652',
                          style: AppFont()
                              .fontTheme(context, weight: FontWeight.bold)
                              .titleSmall,
                        ),
                        Padding(
                          padding: context.padding(left: 8),
                          child: Container(
                            padding:
                                context.padding(horizontal: 8, vertical: 6),
                            decoration: BoxDecoration(
                                color: const Color(0xff40DCDC),
                                borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              appLocal(context).dp1.toUpperCase(),
                              style: AppFont()
                                  .fontTheme(context,
                                      weight: FontWeight.bold,
                                      color: Colors.white)
                                  .bodySmall,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: context.padding(top: 4, bottom: 20),
                      child: Text(
                        '0 ${appLocal(context).usdt.toUpperCase()}',
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodyLarge,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildActionItem(
                            appLocal(context).buyDP1, IconsaxOutline.element_plus),
                        _buildActionItem(appLocal(context).send, IconsaxOutline.send_square),
                        _buildActionItem(
                            appLocal(context).receive, IconsaxOutline.receive_square),
                        _buildActionItem(
                            appLocal(context).converts, IconsaxOutline.convert_card),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: context.padding(horizontal: 36),
              decoration: BoxDecoration(
                color: colorScheme(context).outlineVariant.withOpacity(0.2),
              ),
              height: context.sizeHeight(54),
              child: TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelStyle: AppFont()
                    .fontTheme(context, color: colorScheme(context).onTertiary)
                    .bodyMedium,
                labelStyle: AppFont().fontTheme(context).bodyMedium,
                indicator: BubbleTabIndicator(
                  indicatorHeight: 35,
                  insets: context.padding(horizontal: 30),
                  indicatorColor: const Color(0xff353945),
                  tabBarIndicatorSize: TabBarIndicatorSize.label,
                ),
                tabs:  [
                  Text(appLocal(context).cryptoWallet),
                  Text(appLocal(context).nfts),
                ],
              ),
            ),
            Padding(
              padding: context.padding(horizontal: 20, top: 20),
              child: SizedBox(
                height: context.sizeHeight(400 * 3),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    CryptoWalletPage(),
                    NftsPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionItem(String title, IconData iconData) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: context.padding(bottom: 12),
          child: Container(
            padding: context.padding(all: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: colorScheme(context).outlineVariant)),
            child: Icon(iconData),
          ),
        ),
        Text(
          title,
          style: AppFont().fontTheme(context).bodyMedium,
        ),
      ],
    );
  }
}
