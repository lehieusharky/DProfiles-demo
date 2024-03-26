import 'package:demo_dprofiles/src/features/onboarding/data/mock/mock_data_onboarding.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import 'sub_onboarding_page.dart';

class BodyOnboardingPage extends StatelessWidget {
  final void Function(int index) onPageChanged;
  final PageController controller;

  const BodyOnboardingPage(
      {Key? key, required this.onPageChanged, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: [
        Tuple3(
          Assets.images.onboarding.bgr1.path,
          MockDataOnBoarding.title1,
          MockDataOnBoarding.description1,
        ),
        Tuple3(
          Assets.images.onboarding.bgr3.path,
          MockDataOnBoarding.title2,
          MockDataOnBoarding.description2,
        ),
        Tuple3(
          Assets.images.onboarding.bgr2.path,
          MockDataOnBoarding.title3,
          MockDataOnBoarding.description3,
        ),
      ]
          .map((e) => SubOnboardingPage(
              imagePath: e.item1, title: e.item2, description: e.item3))
          .toList(),
    );
  }
}
