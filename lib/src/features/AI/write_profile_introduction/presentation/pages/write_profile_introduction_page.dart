import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/bloc/write_profile_introduction_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/pages/ext_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/widgets/form_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/widgets/header_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/widgets/tabbar_write_profile.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

@RoutePage()
class WriteProfileIntroductionPage extends StatefulWidget {
  const WriteProfileIntroductionPage({super.key});

  @override
  State<WriteProfileIntroductionPage> createState() =>
      _WriteProfileIntroductionPageState();
}

class _WriteProfileIntroductionPageState
    extends State<WriteProfileIntroductionPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late FlutterTts flutterTts;

  int? currentIndex;
  int? endIndex;
  String? currentText;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    initTts();
  }

  dynamic initTts() {
    flutterTts = FlutterTts();

    flutterTts.setProgressHandler((text, start, end, word) {
      setState(() {
        currentIndex = start;
        endIndex = end;
        currentText = text;
      });
    });
  }

  String? _result;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WriteProfileIntroductionBloc(),
      child: BlocConsumer<WriteProfileIntroductionBloc,
          WriteProfileIntroductionState>(
        listener: (context, state) {
          if (state is GenerateProfileIntroductionSuccess) {
            _result = state.response.data;
            _speak();
          }
        },
        builder: (context, state) {
          return MyScaffold(
            horizontalMargin: 20,
            useAppBar: true,
            heightAppBar: 70,
            canBack: true,
            action: widget.actions(context),
            titleWidget: Assets.icons.logos.dWhitePWhite.svg(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const HeaderWriteProfile(),
                  TabBarWriteProfile(controller: _tabController),
                  Padding(
                    padding: context.padding(vertical: 16),
                    child: const FormWriteProfile(),
                  ),
                  if (_result != null)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Assets.images.aiFeatures.chatGpt.image(
                                width: context.sizeWidth(30),
                                height: context.sizeHeight(30)),
                            Padding(
                              padding: context.padding(left: 4),
                              child: Text(
                                DateTime.now().toString(),
                                style: AppFont()
                                    .fontTheme(context,
                                        color: colorScheme(context).outline)
                                    .bodySmall,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: context.padding(top: 12),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: _result!.substring(0, currentIndex),
                              style: AppFont()
                                  .fontTheme(context,
                                      height: context.sizeHeight(1.6),
                                      color: currentIndex != null
                                          ? colorScheme(context).outline
                                          : colorScheme(context).onBackground)
                                  .bodyLarge,
                            ),
                            if (currentIndex != null)
                              RoundedBackgroundTextSpan(
                                  textScaler: const TextScaler.linear(1.1),
                                  text: currentText!
                                      .substring(currentIndex!, endIndex),
                                  backgroundColor: colorScheme(context).primary,
                                  style: AppFont()
                                      .fontTheme(context,
                                          color:
                                              colorScheme(context).onTertiary)
                                      .bodyLarge),
                            if (currentIndex != null)
                              TextSpan(
                                text: currentText!.substring(endIndex!),
                                style: AppFont()
                                    .fontTheme(context,
                                        height: context.sizeHeight(1.3),
                                        color:
                                            colorScheme(context).onBackground)
                                    .bodyLarge,
                              )
                          ])),
                        ),
                        Padding(
                          padding: context.padding(top: 12, bottom: 24),
                          child: Row(
                            children: [
                              AppOutlineButton(context).elevatedButton(
                                onPressed: () {},
                                title: 'Write again',
                              ),
                              Padding(
                                padding: context.padding(left: 4),
                                child: AppOutlineButton(context).elevatedButton(
                                  width: context.sizeWidth(100),
                                  onPressed: () {},
                                  title: 'Copy',
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _speak() async {
    if (_result != null) {
      if (_result!.isNotEmpty) {
        await flutterTts.speak(_result!);
      }
    }
  }
}
