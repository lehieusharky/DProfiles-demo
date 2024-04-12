import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/certificate_item.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/education_item.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/experience_item.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/part_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/skill_item.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class SubProfilePage extends StatelessWidget {
  const SubProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TitleSubPage(title: 'Open to', route: OpenToWorkRoute()),
          Padding(
            padding: context.padding(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pay',
                  style: AppFont()
                      .fontTheme(context,
                          color: colorScheme(context).outline,
                          weight: FontWeight.bold)
                      .bodyLarge,
                ),
                Container(
                  padding: context.padding(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      color:
                          colorScheme(context).outlineVariant.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text(
                        'Pay per job',
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.bold)
                            .bodyMedium,
                      ),
                      context.sizedBox(width: 5),
                      Icon(IconsaxBold.shop,
                          color: colorScheme(context).outlineVariant),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: context.padding(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Salary',
                  style: AppFont()
                      .fontTheme(context,
                          color: colorScheme(context).outline,
                          weight: FontWeight.bold)
                      .bodyLarge,
                ),
                Container(
                  padding: context.padding(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      color:
                          colorScheme(context).outlineVariant.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text(
                        '\$100,00/Hours',
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).primary,
                                weight: FontWeight.bold)
                            .bodyMedium,
                      ),
                      context.sizedBox(width: 5),
                      Icon(IconsaxBold.shop,
                          color: colorScheme(context).outlineVariant),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: context.padding(vertical: 8),
            child: const Divider(),
          ),
          const TitleSubPage(title: 'About', route: OpenToWorkRoute()),
          Padding(
            padding: context.padding(top: 8),
            child: Text(
              "Professional Product Management in Fintech/Crypto/Web3.0/Social Network/Ecommerce, lead product team at every stages of a product's lifecycle from ideation to product market fit.",
              style: AppFont().fontTheme(context).bodyLarge,
            ),
          ),
          Padding(
              padding: context.padding(vertical: 8), child: const Divider()),
          const TitleSubPage(title: 'Experiences', route: OpenToWorkRoute()),
          SizedBox(
            height: context.sizeHeight(300),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const ExperienceItem();
                }),
          ),
          const TitleSubPage(title: 'Skills', route: OpenToWorkRoute()),
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
          Padding(
            padding: context.padding(bottom: 8),
            child: const Divider(),
          ),
          const TitleSubPage(title: 'Education', route: OpenToWorkRoute()),
          SizedBox(
            height: context.sizeHeight(242),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const EducationItem();
                }),
          ),
          const TitleSubPage(title: 'Certificates', route: OpenToWorkRoute()),
          SizedBox(
            height: context.sizeHeight(135),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const CertificateItem();
                }),
          ),
          const TitleSubPage(title: 'Language', route: OpenToWorkRoute()),
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
          context.sizedBox(height: 50),
        ],
      ),
    );
  }
}
