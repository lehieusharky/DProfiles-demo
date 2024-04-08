import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/utils/constant/ai_features_type.dart';
import 'package:flutter/material.dart';

import 'ai_feature_topic_item.dart';

class HeaderAIFeatures extends StatelessWidget {
  const HeaderAIFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        shrinkWrap: true,
        childAspectRatio: 1.2,
        crossAxisSpacing: context.sizeWidth(12),
        mainAxisSpacing: context.sizeWidth(12),
        crossAxisCount: 2,
        children: AiFeatureTypes.values
            .map((e) => AIFeatureTopicItem(
                  color: e.getBackgroundColor(),
                  title: e.getTitle(context),
                  iconPath: e.getImageTopicPath(),
                  route: e.getRoute(),
                ))
            .toList());
  }
}
