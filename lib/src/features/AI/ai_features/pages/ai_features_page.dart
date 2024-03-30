import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/pages/ext_ai_features_page.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/widgets/header_ai_feature.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Tuple4(
                colorScheme(context).primary,
                'Write your profile Introduction',
                Assets.images.aiFeatures.profileIntroduction.path,
                () => context.router.push(const CreateDigitalProfileRoute()),
              ),
              Tuple4(
                colorScheme(context).secondaryContainer,
                'Write Cover Letter',
                Assets.images.aiFeatures.letter.path,
                () {},
              ),
            ]
                .map((e) => HeaderAiFeature(
                    color: e.item1, title: e.item2, iconPath: e.item3))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Tuple4(
                colorScheme(context).secondary,
                'Skills & Knowledge by Job Title',
                Assets.images.aiFeatures.folder.path,
                () {},
              ),
              Tuple4(
                MyColor.get3772FF,
                'Job Interview Q&A',
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
        ],
      ),
    );
  }
}
