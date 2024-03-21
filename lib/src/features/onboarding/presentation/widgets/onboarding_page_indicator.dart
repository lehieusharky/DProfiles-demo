import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final PageController controller;
  final int countOfSubPage;
  final double? bottom;
  final double? top;

  const OnboardingPageIndicator({
    super.key,
    required this.controller,
    required this.countOfSubPage,
    this.bottom,
    this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: bottom ?? 32, top: top ?? 45),
      child: SmoothPageIndicator(
        controller: controller,
        count: countOfSubPage,
        effect: ExpandingDotsEffect(
          expansionFactor: 4,
          activeDotColor: colorScheme(context).primary,
          dotWidth: context.sizeHeight(6),
          dotHeight: context.sizeHeight(6),
          dotColor: colorScheme(context).outlineVariant,
        ),
      ),
    );
  }
}
