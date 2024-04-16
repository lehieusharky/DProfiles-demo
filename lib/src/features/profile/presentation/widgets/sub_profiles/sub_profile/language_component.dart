import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/skill_item.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

class LanguageComponent extends StatelessWidget {
  const LanguageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TitleSubPage(title: 'Language', route: AboutRoute()),
        Padding(
          padding: context.padding(top: 8),
          child: SizedBox(
            height: context.sizeHeight(100),
            child: const Column(
              children: [
                Row(
                  children: [
                    SkillItem(title: 'English'),
                    SkillItem(title: 'Korean'),
                    SkillItem(title: 'Vietnamese'),
                  ],
                ),
                Row(
                  children: [
                    SkillItem(title: 'Chinese'),
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
