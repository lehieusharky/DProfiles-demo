import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

class FormAddCharacter extends StatelessWidget {
  const FormAddCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.padding(bottom: 24),
          child: Text(
            "${appLocal(context).addYourCharacter} (is developing)",
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .labelMedium,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: PropertiesOfCharacter.values
              .map((e) => PropertyOfCharacterItem(
                    title: e.getTitle(),
                  ))
              .toList(),
        ),
        Padding(
          padding: context.padding(vertical: 32),
          child: AppFlatButton(context).elevatedButton(
            width: context.width,
            onPressed: () => _save(context),
            title: appLocal(context).nextButton.toUpperCase(),
          ),
        ),
      ],
    );
  }

  _save(BuildContext context) {
    context
        .read<AiCharacterBloc>()
        .add(const AICharacterChangeCreationStep(isNext: true));
  }
}

class PropertyOfCharacterItem extends StatefulWidget {
  final String title;
  const PropertyOfCharacterItem({super.key, required this.title});

  @override
  State<PropertyOfCharacterItem> createState() =>
      _PropertyOfCharacterItemState();
}

class _PropertyOfCharacterItemState extends State<PropertyOfCharacterItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppFont().fontTheme(context).bodyLarge,
        ),
        Padding(
          padding: context.padding(top: 5, bottom: 15),
          child: Row(
            children: [
              Tuple2(const Color(0xff58BD7D), () {}),
              Tuple2(const Color(0xff4BC9F0), () {}),
              Tuple2(const Color(0xff3772FF), () {}),
              Tuple2(const Color(0xff9757D7), () {}),
              Tuple2(const Color(0xffBB6BD9), () {}),
            ]
                .map((e) => Padding(
                      padding: context.padding(horizontal: 0.5),
                      child: Flexible(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: context.sizeWidth(context.width / 6.5),
                            height: context.sizeHeight(10),
                            decoration: BoxDecoration(
                                color: e.item1,
                                borderRadius: BorderRadius.circular(2)),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

enum PropertiesOfCharacter {
  inspiring,
  smart,
  friendly,
  supportive,
  helpful,
  humorous,
  passive,
  aggressive,
  violent,
  formal,
  spiritual,
  chatty,
  energetic,
  sexy,
  flirty,
}

extension PropertiesOfCharacterExt on PropertiesOfCharacter {
  String getTitle() {
    return switch (this) {
      PropertiesOfCharacter.inspiring => 'Inspiring',
      PropertiesOfCharacter.smart => 'Smart',
      PropertiesOfCharacter.friendly => 'Friendly',
      PropertiesOfCharacter.supportive => 'Supportive',
      PropertiesOfCharacter.helpful => 'Helpful',
      PropertiesOfCharacter.humorous => 'Humorous',
      PropertiesOfCharacter.passive => 'Passive',
      PropertiesOfCharacter.aggressive => 'Aggressive',
      PropertiesOfCharacter.violent => 'Violent',
      PropertiesOfCharacter.formal => 'Formal',
      PropertiesOfCharacter.spiritual => 'Spiritual',
      PropertiesOfCharacter.chatty => 'Chatty',
      PropertiesOfCharacter.energetic => 'Energetic',
      PropertiesOfCharacter.sexy => 'Sexy',
      PropertiesOfCharacter.flirty => 'Flirty',
    };
  }
}
