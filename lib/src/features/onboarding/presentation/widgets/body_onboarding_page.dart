import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class BodyOnboardingPage extends StatelessWidget {
  final void Function(int index) onPageChanged;
  final PageController controller;

  const BodyOnboardingPage({
    Key? key,
    required this.onPageChanged,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: OnboardingPages.values.map((e) => _SubPage(type: e)).toList(),
    );
  }
}

class _SubPage extends StatelessWidget {
  final OnboardingPages type;

  const _SubPage({required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(type.getImagePath(),
            width: context.sizeWidth(350),
            height: context.sizeHeight(350),
            fit: BoxFit.cover),
        Padding(
          padding: context.padding(bottom: 24),
          child: Text(
            type.getTitle(context),
            textAlign: TextAlign.center,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.w700)
                .headlineMedium,
          ),
        ),
        Text(
          type.getDescription(context),
          textAlign: TextAlign.center,
          style: AppFont()
              .fontTheme(context,
                  height: 1.5,
                  color: colorScheme(context).outline,
                  weight: FontWeight.w400)
              .bodyMedium,
        ),
      ],
    );
  }
}

enum OnboardingPages { first, second, third }

extension OnboardingPagesExt on OnboardingPages {
  String getTitle(BuildContext context) {
    return switch (this) {
      OnboardingPages.first => appLocal(context).titleOnboarding1,
      OnboardingPages.second => appLocal(context).titleOnboarding2,
      OnboardingPages.third => appLocal(context).titleOnboarding3,
    };
  }

  String getDescription(BuildContext context) {
    return switch (this) {
      OnboardingPages.first => appLocal(context).descriptionOnboarding1,
      OnboardingPages.second => appLocal(context).descriptionOnboarding2,
      OnboardingPages.third => appLocal(context).descriptionOnboarding3,
    };
  }

  String getImagePath() {
    return switch (this) {
      OnboardingPages.first => Assets.images.onboarding.bgr1.path,
      OnboardingPages.second => Assets.images.onboarding.bgr2.path,
      OnboardingPages.third => Assets.images.onboarding.bgr3.path,
    };
  }
}
