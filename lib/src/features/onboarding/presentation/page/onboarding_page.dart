import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/widgets/body_onboarding_page.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/widgets/onboarding_page_indicator.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/widgets/skip_button.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:ficonsax/ficonsax.dart';

import 'package:flutter/material.dart';

const int SUB_PAGES = 3;

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;
  bool _isLastPage = false;

  @override
  void initState() {
    _pageController = PageController(keepPage: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      body: Column(
        children: [
          SkipButton(isLastPage: _isLastPage, onSkip: () => _skip()),
          Expanded(
            child: BodyOnboardingPage(
              onPageChanged: (page) => _onPageChanged(page),
              controller: _pageController,
            ),
          ),
          Padding(
            padding: context.padding(bottom: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OnboardingPageIndicator(
                    controller: _pageController, sumSubPages: SUB_PAGES),
                AppFlatButton(context).iconButton(
                    icon: Assets.icons.arrowLeft.svg(
                        width: context.sizeWidth(18),
                        height: context.sizeWidth(18)),
                    onPressed: _onButtonPressed),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _skip() => _pageController.animateToPage(SUB_PAGES - 1,
      duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);

  void _onButtonPressed() {
    if (!_isLastPage) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      context.router.replace(const ConnectWalletRoute());
    }
  }

  void _onPageChanged(int page) =>
      setState(() => _isLastPage = page == (SUB_PAGES - 1) ? true : false);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
