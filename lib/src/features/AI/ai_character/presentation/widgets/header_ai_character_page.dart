import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/services/tts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class HeaderAICharacterPage extends StatefulWidget {
  final String textGenerated;
  const HeaderAICharacterPage({super.key, required this.textGenerated});

  @override
  State<HeaderAICharacterPage> createState() => _HeaderAICharacterPageState();
}

class _HeaderAICharacterPageState extends State<HeaderAICharacterPage> {
  late FlutterTts tts;

  int? currentIndex;
  int? endIndex;
  String? currentSpeech;

  @override
  void initState() {
    super.initState();
    initTts();

    tts.speak(widget.textGenerated);
  }

  dynamic initTts() {
    tts = TtsService().tts;

    tts.setProgressHandler((text, start, end, word) {
      setState(() {
        currentIndex = start;
        endIndex = end;
        currentSpeech = text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.textGenerated,
      style: AppFont()
          .fontTheme(
            context,
            weight: FontWeight.bold,
            color: colorScheme(context).outline,
          )
          .bodyLarge,
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: context.padding(top: 12),
      child: RichText(
        text: TextSpan(
          children: [
            if (currentIndex != null)
              RoundedBackgroundTextSpan(
                  textScaler: const TextScaler.linear(1),
                  text: currentSpeech!.substring(currentIndex!, endIndex),
                  backgroundColor: colorScheme(context).primary,
                  style: AppFont()
                      .fontTheme(context,
                          color: colorScheme(context).onTertiary)
                      .bodyLarge),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    tts.stop();
  }
}
