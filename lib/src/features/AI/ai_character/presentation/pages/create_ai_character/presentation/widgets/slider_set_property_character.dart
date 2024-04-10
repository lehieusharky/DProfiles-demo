
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:demo_dprofiles/src/utils/constant/ai_character_bot_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderSetPropertyCharacter extends StatefulWidget {
  final PropertiesOfCharacter property;
  const SliderSetPropertyCharacter({super.key, required this.property});

  @override
  State<SliderSetPropertyCharacter> createState() =>
      _SliderSetPropertyCharacterState();
}

class _SliderSetPropertyCharacterState
    extends State<SliderSetPropertyCharacter> {
  int _rating = 1;

  final List<Color> _colors = [
    MyColor.green58BD7D,
    MyColor.blue4BC9F0,
    MyColor.blue3772FF,
    MyColor.purple9757D7,
    MyColor.pinkBB6BD9,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.property.getTitle(),
            style: AppFont().fontTheme(context).bodyLarge,
          ),
          Padding(
            padding: context.padding(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => GestureDetector(
                  onTap: () => _update(context, index),
                  child: Container(
                    width: context.width / 6,
                    height: context.sizeHeight(12),
                    margin: context.padding(horizontal: 0.5),
                    decoration: BoxDecoration(
                      color: _rating > index
                          ? _colors[index]
                          : colorScheme(context).outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _update(BuildContext context, int index) {
    final newestValue = index + 1;

    setState(() => _rating = newestValue);

    context
        .read<AiCharacterBloc>()
        .add(UpdatePropertiesOfCharacterBot(widget.property, newestValue));
  }
}
