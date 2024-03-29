import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

enum CreateCharacterStep { basicInfo, profile, character }

extension CreateCharacterStepExt on CreateCharacterStep {
  String get title {
    return switch (this) {
      CreateCharacterStep.basicInfo => 'Basic Information',
      CreateCharacterStep.profile => 'Profiles',
      CreateCharacterStep.character => 'Character',
    };
  }

  int get position {
    return switch (this) {
      CreateCharacterStep.basicInfo => 1,
      CreateCharacterStep.profile => 2,
      CreateCharacterStep.character => 3,
    };
  }
}

class HeaderCreateAIChacracter extends StatefulWidget {
  final void Function(int index)? onPressed;

  const HeaderCreateAIChacracter({
    super.key,
    this.onPressed,
  });

  @override
  State<HeaderCreateAIChacracter> createState() =>
      _HeaderCreateAIChacracterState();
}

class _HeaderCreateAIChacracterState extends State<HeaderCreateAIChacracter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.sizeHeight(205),
      padding: context.padding(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(color: colorScheme(context).secondary),
      child: Column(
        children: [
          _buildTitle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Tuple2(CreateCharacterStep.basicInfo, () {}),
              Tuple2(CreateCharacterStep.profile, () {}),
              Tuple2(CreateCharacterStep.character, () {}),
            ].map((e) => _buildBottomNavigationItem(e.item1)).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildIcon() => Assets.images.aiFeatures.createAiCharacterIcon
      .image(width: context.sizeWidth(80), fit: BoxFit.cover);

  Widget _buildTitle() => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            IconsaxOutline.arrow_left,
            color: MyColor.getWhite,
            size: 25,
          ),
          Row(
            children: [
              Expanded(
                child: Text('Create your AI character',
                    style: AppFont()
                        .fontTheme(context,
                            weight: FontWeight.w600,
                            height: 1.3,
                            color: MyColor.getWhite)
                        .titleSmall),
              ),
              _buildIcon(),
            ],
          ),
        ],
      );

  Widget _buildBottomNavigationItem(CreateCharacterStep step) {
    return InkWell(
      onTap: widget.onPressed == null
          ? null
          : () => widget.onPressed!(step.position - 1),
      child: Row(
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
      ),
    );
  }
}
