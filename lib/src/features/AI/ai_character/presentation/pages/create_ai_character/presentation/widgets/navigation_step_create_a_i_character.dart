import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

class NavigationStepCreateAICharacter extends StatelessWidget {
  final TabController controller;

  const NavigationStepCreateAICharacter({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(top: 12),
      child: IgnorePointer(
        ignoring: true,
        child: TabBar(
          controller: controller,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          tabAlignment: TabAlignment.start,
          tabs: [
            Tuple2(CreateAICharacterStep.basicInfo, () {}),
            Tuple2(CreateAICharacterStep.profiles, () {}),
            Tuple2(CreateAICharacterStep.character, () {}),
          ].map((e) => _Item(e.item1)).toList(),
        ),
      ),
    );
  }
}

class _Item extends StatefulWidget {
  final CreateAICharacterStep step;

  const _Item(this.step);

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AiCharacterBloc, AiCharacterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Row(
            children: [
              Container(
                width: context.sizeWidth(24),
                height: context.sizeHeight(24),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _isSelected
                      ? colorScheme(context).primary
                      : colorScheme(context).secondaryContainer,
                ),
                child: _isSelected
                    ? Icon(
                        Icons.check,
                        color: MyColor.getWhite,
                        size: context.sizeWidth(16),
                      )
                    : Text(
                        widget.step.position.toString(),
                        style: AppFont()
                            .fontTheme(context,
                                color: MyColor.getWhite,
                                weight: FontWeight.bold)
                            .bodySmall,
                      ),
              ),
              Padding(
                padding: context.padding(left: 4),
                child: Text(
                  widget.step.title,
                  style: AppFont()
                      .fontTheme(context,
                          color: _isSelected
                              ? colorScheme(context).primary
                              : colorScheme(context).outline,
                          weight: FontWeight.bold)
                      .bodySmall,
                ),
              ),
            ],
          );
        });
  }
}

enum CreateAICharacterStep { basicInfo, profiles, character }

extension CreateCharacterStepExt on CreateAICharacterStep {
  String get title {
    return switch (this) {
      CreateAICharacterStep.basicInfo => 'Basic Information',
      CreateAICharacterStep.profiles => 'Profiles',
      CreateAICharacterStep.character => 'Character',
    };
  }

  int get position {
    return switch (this) {
      CreateAICharacterStep.basicInfo => 1,
      CreateAICharacterStep.profiles => 2,
      CreateAICharacterStep.character => 3,
    };
  }
}
