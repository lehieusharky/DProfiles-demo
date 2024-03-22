import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/widgets/onboarding_page_indicator.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

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
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SizedBox(
          height: context.sizeHeight(270),
          child: PageView.builder(
            controller: _pageController,
            itemCount: pageCount,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: context.padding(horizontal: 20, top: 5),
                  alignment: Alignment.topCenter,
                  decoration: const BoxDecoration(color: Color(0xff23262F)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Leveraged tokens now available',
                                style: AppFont()
                                    .fontTheme(context,
                                        weight: FontWeight.w600,
                                        color: Colors.white)
                                    .titleSmall),
                            Padding(
                              padding: context.padding(top: 16, bottom: 10),
                              child: Text(
                                'Good things come in 3s. Get 3x Leveraged tokens now.',
                                style: AppFont()
                                    .fontTheme(context,
                                        weight: FontWeight.w400,
                                        color:
                                            colorScheme(context).outlineVariant)
                                    .bodyMedium,
                              ),
                            ),
                            MyButton(
                              height: context.sizeHeight(50),
                              onPressed: () {},
                              title: 'Connect wallet',
                            ),
                          ],
                        ),
                      ),
                      Assets.images.home.gift
                          .image(width: context.sizeWidth(150)),
                    ],
                  ));
            },
          ),
        ),
        Padding(
          padding: context.padding(left: 20, bottom: 24),
          child: OnboardingPageIndicator(
            controller: _pageController,
            countOfSubPage: pageCount,
            bottom: 0,
            top: 0,
          ),
        ),
      ],
    );
  }
}
