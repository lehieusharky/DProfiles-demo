import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/skill_item.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

class SkillComponent extends StatelessWidget {
  const SkillComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TitleSubPage(title: 'About', route: AboutRoute()),
        Padding(
          padding: context.padding(top: 8),
          child: SizedBox(
            height: context.sizeHeight(100),
            child: const Column(
              children: [
                Row(
                  children: [
                    SkillItem(title: 'UX/UI'),
                    SkillItem(title: 'Content'),
                    SkillItem(title: 'Google Ads'),
                  ],
                ),
                Row(
                  children: [
                    SkillItem(title: 'Marketing'),
                    SkillItem(title: 'Content'),
                    SkillItem(title: 'Content'),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
