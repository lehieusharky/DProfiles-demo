import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/widgets/onboarding_page_indicator.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  late PageController _pageController;
  final int pageCount = 3;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: 10),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          SizedBox(
            height: context.sizeHeight(270),
            child: PageView.builder(
              controller: _pageController,
              itemCount: pageCount,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: context.sizeHeight(270),
                  decoration:
                      BoxDecoration(color: colorScheme(context).secondary),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      _buildBannerBackground(),
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          _buildWalletIcon(),
                          _buildContent(),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          _buildIndicator(),
        ],
      ),
    );
  }

  Widget _buildWalletIcon() => Container(
      padding: context.padding(top: 64),
      alignment: Alignment.centerRight,
      child: Assets.images.home.wallet
          .image(width: context.sizeWidth(180), fit: BoxFit.cover));

  Widget _buildContent() => Padding(
        padding: context.padding(right: 100),
        child: Container(
          padding: context.padding(left: 20, top: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: context.padding(bottom: 16),
                child: Text(appLocal(context).investmentOpportunity,
                    style: AppFont()
                        .fontTheme(context,
                            weight: FontWeight.w400,
                            color: colorScheme(context).outline)
                        .bodyMedium),
              ),
              Text(appLocal(context).dProfilesOpensSales,
                  style: AppFont()
                      .fontTheme(context,
                          weight: FontWeight.w600,
                          height: 1.3,
                          color: MyColor.getWhite)
                      .titleSmall),
              Padding(
                padding: context.padding(top: 5, bottom: 10),
                child: Text(appLocal(context).inAngelnvestorRound,
                    style: AppFont()
                        .fontTheme(context,
                            weight: FontWeight.w600, color: MyColor.getFFD166)
                        .bodyLarge),
              ),
              MyButton(
                onPressed: () async => _launchUrl(),
                title: appLocal(context).buyDP1,
              ),
            ],
          ),
        ),
      );

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse('https://www.dprofiles.xyz/investment');

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Widget _buildBannerBackground() => Assets.images.home.bannerBackground.image(
      width: context.sizeWidth(220),
      height: context.sizeHeight(200),
      fit: BoxFit.cover);

  Widget _buildIndicator() => Padding(
        padding: context.padding(left: 20, bottom: 24),
        child: OnboardingPageIndicator(
          controller: _pageController,
          sumSubPages: pageCount,
          bottom: 0,
          top: 0,
        ),
      );
}
