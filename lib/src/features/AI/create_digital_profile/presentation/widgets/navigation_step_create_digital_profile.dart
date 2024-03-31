import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

class NavigationStepCreateDigitalProfile extends StatelessWidget {
  final TabController controller;
  const NavigationStepCreateDigitalProfile(
      {super.key, required this.controller});

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
            Tuple2(CreateDigitalProfileStep.basicInfo, () {}),
            Tuple2(CreateDigitalProfileStep.education, () {}),
            Tuple2(CreateDigitalProfileStep.certificate, () {}),
            Tuple2(CreateDigitalProfileStep.experience, () {}),
          ].map((e) => _Item(e.item1)).toList(),
        ),
      ),
    );
  }
}

class _Item extends StatefulWidget {
  final CreateDigitalProfileStep step;

  const _Item(this.step);

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
        listener: (context, state) {
      if (state is ChangeCreationStepSuccess) {
        _isSelected = state.currentStep == widget.step.position;
      }
    }, builder: (context, state) {
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
                            color: MyColor.getWhite, weight: FontWeight.bold)
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

enum CreateDigitalProfileStep { basicInfo, education, certificate, experience }

extension CreateCharacterStepExt on CreateDigitalProfileStep {
  String get title {
    return switch (this) {
      CreateDigitalProfileStep.basicInfo => 'Basic Information',
      CreateDigitalProfileStep.education => 'Education',
      CreateDigitalProfileStep.certificate => 'Certificate',
      CreateDigitalProfileStep.experience => 'Experience',
    };
  }

  int get position {
    return switch (this) {
      CreateDigitalProfileStep.basicInfo => 1,
      CreateDigitalProfileStep.education => 2,
      CreateDigitalProfileStep.certificate => 3,
      CreateDigitalProfileStep.experience => 4,
    };
  }
}
