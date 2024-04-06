import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import 'ai_feature_item.dart';

class AiFeatureHeader extends StatelessWidget {
  const AiFeatureHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Tuple4(
              colorScheme(context).primary,
              appLocal(context).writeYourProfileIntroduction,
              Assets.images.aiFeatures.profileIntroduction.path,
              () => context.router.push(const WriteProfileIntroductionRoute()),
            ),
            Tuple4(
              colorScheme(context).secondaryContainer,
              appLocal(context).writeCoverLetter,
              Assets.images.aiFeatures.letter.path,
              () => context.router.push(const AICharacterRoute()),
            ),
          ]
              .map((e) => AIFeatureItem(
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
              .map((e) => AIFeatureItem(
                  onPressed: e.item4,
                  color: e.item1,
                  title: e.item2,
                  iconPath: e.item3))
              .toList(),
        ),
      ],
    );
  }
}
