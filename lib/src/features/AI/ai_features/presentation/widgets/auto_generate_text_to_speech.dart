import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_toast.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:demo_dprofiles/src/utils/services/app_clipboard_service.dart';
import 'package:demo_dprofiles/src/utils/services/tts_service.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class AutoGenerateTextToSpeech extends StatefulWidget {
  final String? textGenerated;
  final String? createAt;
  final bool? autoStart;
  final bool? useAction;
  const AutoGenerateTextToSpeech(
      {Key? key,
      this.textGenerated,
      this.createAt,
      this.autoStart,
      this.useAction})
      : super(key: key);

  @override
  State<AutoGenerateTextToSpeech> createState() =>
      _AutoGenerateTextToSpeechState();
}

class _AutoGenerateTextToSpeechState extends State<AutoGenerateTextToSpeech> {
  late FlutterTts tts;

  int? currentIndex;
  int? endIndex;
  String? currentSpeech;

  @override
  void initState() {
    super.initState();
    initTts();
    if (widget.autoStart == true) {
      tts.speak(widget.textGenerated ?? '');
    }
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: (widget.textGenerated != null)
          ? [
              _buildTitle(),
              _buildBody(),
              if (widget.useAction != false) _buildActionButton(),
            ]
          : [],
    );
  }

  Widget _buildActionButton() {
    return Padding(
      padding: context.padding(vertical: 5),
      child: AppOutlineButton(context)
          .elevatedButton(onPressed: () async => await _copy(), title: appLocal(context).copy),
    );
  }

  Future<void> _copy() async => await AppClipboardService()
      .copyTextToClipboard(widget.textGenerated ?? '')
      .then((value) => showToast(context, appLocal(context).copied));

  Widget _buildTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.images.aiFeatures.chatGpt.image(
          width: context.sizeWidth(30),
          height: context.sizeHeight(30),
        ),
        if (widget.createAt != null)
          Padding(
            padding: context.padding(left: 4),
            child: Text(
              widget.createAt!,
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodySmall,
            ),
          ),
        const Spacer(),
        Padding(
          padding: context.padding(horizontal: 20),
          child: InkWell(
              onTap: () => _speak(),
              child: const Icon(IconsaxOutline.volume_high)),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: context.padding(top: 12),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.textGenerated!.substring(0, currentIndex),
              style: AppFont()
                  .fontTheme(context,
                      height: context.sizeHeight(1.8),
                      color: currentIndex != null
                          ? colorScheme(context).outline
                          : colorScheme(context).onBackground)
                  .bodyLarge,
            ),
            if (currentIndex != null)
              RoundedBackgroundTextSpan(
                  textScaler: const TextScaler.linear(1),
                  text: currentSpeech!.substring(currentIndex!, endIndex),
                  backgroundColor: colorScheme(context).primary,
                  style: AppFont()
                      .fontTheme(context,
                          color: colorScheme(context).onTertiary)
                      .bodyLarge),
            if (currentIndex != null)
              TextSpan(
                text: currentSpeech!.substring(endIndex!),
                style: AppFont()
                    .fontTheme(context,
                        height: context.sizeHeight(1.8),
                        color: colorScheme(context).onBackground)
                    .bodyLarge,
              )
          ],
        ),
      ),
    );
  }

  Future<void> _speak() async {
    if (widget.textGenerated != null) {
      if (widget.textGenerated!.isNotEmpty) {
        await tts.speak(widget.textGenerated!);
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    tts.stop();
  }
}
