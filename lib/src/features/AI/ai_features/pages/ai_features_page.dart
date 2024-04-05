import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/pages/ext_ai_features_page.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/widgets/header_ai_feature.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class AiFeaturesPage extends StatefulWidget {
  const AiFeaturesPage({Key? key}) : super(key: key);

  @override
  State<AiFeaturesPage> createState() => _AiFeaturesPageState();
}

class _AiFeaturesPageState extends State<AiFeaturesPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      horizontalMargin: 20,
      action: widget.actions(context),
      titleWidget: Assets.icons.logos.homeLogo.svg(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.padding(bottom: 24),
              child: Text('AI Features',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.bold)
                      .titleSmall),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Tuple4(
                  colorScheme(context).primary,
                  appLocal(context).writeYourProfileIntroduction,
                  Assets.images.aiFeatures.profileIntroduction.path,
                  () => context.router
                      .push(const WriteProfileIntroductionRoute()),
                ),
                Tuple4(
                  colorScheme(context).secondaryContainer,
                  appLocal(context).writeCoverLetter,
                  Assets.images.aiFeatures.letter.path,
                  () => context.router.push(const AICharacterRoute()),
                ),
              ]
                  .map((e) => HeaderAiFeature(
                      onPressed: e.item4,
                      color: e.item1,
                      title: e.item2,
                      iconPath: e.item3))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Tuple4(
                  colorScheme(context).secondary,
                  appLocal(context).skillsKnowledgeByJobTitle,
                  Assets.images.aiFeatures.folder.path,
                  () {},
                ),
                Tuple4(
                  MyColor.get3772FF,
                  appLocal(context).jobInterviewQA,
                  Assets.images.aiFeatures.job.path,
                  () {},
                ),
              ]
                  .map((e) => HeaderAiFeature(
                      onPressed: e.item4,
                      color: e.item1,
                      title: e.item2,
                      iconPath: e.item3))
                  .toList(),
            ),
            Padding(
              padding: context.padding(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('View History',
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.bold)
                          .titleSmall),
                  Text('View all',
                      style: AppFont()
                          .fontTheme(context,
                              color: colorScheme(context).primary)
                          .bodyMedium),
                ],
              ),
            ),
            _buildHistoryItem(),
            _buildHistoryItem(),
            _buildHistoryItem(),
            context.sizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryItem() {
    return Padding(
      padding: context.padding(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 4),
            child: Container(
              padding: context.padding(all: 12),
              decoration: BoxDecoration(
                color: colorScheme(context).outlineVariant.withOpacity(0.05),
                border: Border.all(
                    color:
                        colorScheme(context).outlineVariant.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: context.sizeWidth(100),
                        child: Text('Topic',
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.w600,
                                    color: colorScheme(context).primary)
                                .bodyLarge),
                      ),
                      Expanded(
                        child: Text('Write Your Profile Introduction',
                            style: AppFont()
                                .fontTheme(context,
                                    color: colorScheme(context).primary)
                                .bodyLarge),
                      ),
                    ],
                  ),
                  Padding(
                    padding: context.padding(top: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: context.sizeWidth(100),
                          child: Text('Prompt',
                              style: AppFont().fontTheme(context).bodySmall),
                        ),
                        Expanded(
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
                              style: AppFont()
                                  .fontTheme(context,
                                      color: colorScheme(context).outline)
                                  .bodySmall),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text('12/10/2024',
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodyMedium),
        ],
      ),
    );
  }
}
