import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/widgets/body_onboarding_page.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/widgets/onboarding_page_indicator.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/widgets/skip_button.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';

import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;
  bool _isLastPage = false;

  final countOfSubPage = 3;

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
          SkipButton(
            isLastPage: _isLastPage,
            onSkip: () => _skip(),
          ),
          Expanded(
              child: BodyOnboardingPage(
            onPageChanged: (page) => _onPageChanged(page),
            controller: _pageController,
          )),
          MyButton(
            width: context.width,
            onPressed: () => _onButtonPressed(),
            title: _titleButton(),
          ),
          OnboardingPageIndicator(
            controller: _pageController,
            countOfSubPage: countOfSubPage,
          )
        ],
      ),
    );
  }

  void _skip() => _pageController.jumpToPage(countOfSubPage - 1);

  void _onButtonPressed() {
    if (!_isLastPage) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      context.router.push(const ConnectWalletRoute());
    }
  }

  String _titleButton() => _isLastPage ? 'Get Started' : 'Next';

  void _onPageChanged(int page) {
    setState(() {
      _isLastPage = page == (countOfSubPage - 1) ? true : false;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
