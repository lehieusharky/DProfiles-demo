import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/setting/presentation/bloc/setting_bloc.dart';
import 'package:demo_dprofiles/src/features/setting/presentation/pages/extension_setting_page.dart';
import 'package:demo_dprofiles/src/features/setting/presentation/widgets/group_setting_button.dart';
import 'package:demo_dprofiles/src/features/setting/presentation/widgets/setting_button.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_language.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return MyScaffold(
            horizontalMargin: 12,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  GroupSettingButton(buttons: [
                    SettingButton(
                      title: appLocal(context).theme,
                      description: sharePreference.getTheme().toTitle(context),
                      onPressed: () async =>
                          widget.showToggleThemeBottomSheet(context),
                      iconData: IconsaxOutline.sun_1,
                      trailing: Switch.adaptive(
                        value: sharePreference.isDarkMode(),
                        activeTrackColor:
                            colorScheme(context).secondaryContainer,
                        onChanged: (status) => context
                            .read<SettingBloc>()
                            .add(ToggleDarkMode(status)),
                      ),
                    ),
                  ]),
                  GroupSettingButton(
                    buttons: [
                      SettingButton(
                        title: 'Language',
                        description: sharePreference.getLanguage().toTitle(),
                        onPressed: () async =>
                            widget.showToggleLanguageBottomSheet(context),
                        iconData: IconsaxOutline.language_square,
                      ),
                    ],
                  ),
                  GroupSettingButton(
                    buttons: [
                      SettingButton(
                        title: 'Sign out',
                        onPressed: () async =>
                            widget.showToggleLanguageBottomSheet(context),
                        iconData: IconsaxOutline.logout,
                      ),
                    ],
                  ),
                ],
              ),
            ));
      },
    );
  }
}
