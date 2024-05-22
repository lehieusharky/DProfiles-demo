import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

import 'write_skill_knowledge.dart';

extension WriteProfileIntroductionPageExt on WriteSkillKnowledgePage {
  List<Widget> actions(
    BuildContext context, {
    VoidCallback? onAction3Pressed,
  }) =>
      [
        AppFlatButton(context).elevatedButton(
          onPressed: () {},
          title: appLocal(context).connectWallet,
        ),
        Padding(
          padding: context.padding(horizontal: 5),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(IconsaxOutline.menu_1),
          ),
        ),
      ];
}
