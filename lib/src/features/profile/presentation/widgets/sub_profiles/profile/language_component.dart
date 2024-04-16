import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class LanguageComponent extends StatelessWidget {
  const LanguageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TitleSubPage(title: 'Language', route: AddLanguageRoute()),
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

class SkillItem extends StatelessWidget {
  final String title;
  const SkillItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(right: 8, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: colorScheme(context).outlineVariant.withOpacity(0.2),
        ),
        padding: context.padding(horizontal: 12, vertical: 8),
        child: Text(
          title,
          style:
              AppFont().fontTheme(context, weight: FontWeight.bold).bodyMedium,
        ),
      ),
    );
  }
}
