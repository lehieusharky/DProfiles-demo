import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class NavigationStepCreateDigitalProfile extends StatelessWidget {
  const NavigationStepCreateDigitalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Tuple2(CreateDigitalProfileStep.basicInfo, () {}),
          Tuple2(CreateDigitalProfileStep.profile, () {}),
          Tuple2(CreateDigitalProfileStep.character, () {}),
        ].map((e) => _Item(e.item1)).toList(),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final CreateDigitalProfileStep step;
  const _Item(this.step);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: context.sizeWidth(24),
          height: context.sizeHeight(24),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorScheme(context).secondaryContainer,
          ),
          child: Text(
            step.position.toString(),
            style: AppFont()
                .fontTheme(context,
                    color: MyColor.getWhite, weight: FontWeight.bold)
                .bodySmall,
          ),
        ),
        Padding(
          padding: context.padding(left: 4),
          child: Text(
            step.title,
            style: AppFont()
                .fontTheme(context,
                    color: colorScheme(context).primary,
                    weight: FontWeight.bold)
                .bodySmall,
          ),
        ),
      ],
    );
  }
}

enum CreateDigitalProfileStep { basicInfo, profile, character }

extension CreateCharacterStepExt on CreateDigitalProfileStep {
  String get title {
    return switch (this) {
      CreateDigitalProfileStep.basicInfo => 'Basic Information',
      CreateDigitalProfileStep.profile => 'Education',
      CreateDigitalProfileStep.character => 'Certificate',
    };
  }

  int get position {
    return switch (this) {
      CreateDigitalProfileStep.basicInfo => 1,
      CreateDigitalProfileStep.profile => 2,
      CreateDigitalProfileStep.character => 3,
    };
  }
}
