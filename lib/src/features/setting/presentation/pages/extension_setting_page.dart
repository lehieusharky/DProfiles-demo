import 'package:demo_dprofiles/src/features/setting/presentation/bloc/setting_bloc.dart';
import 'package:demo_dprofiles/src/features/setting/presentation/pages/setting_page.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_language.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/bottom_sheet/toggle_language_bottomsheet.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/bottom_sheet/toggle_theme_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension SettingPageExt on SettingPage {
  Future<void> showToggleThemeBottomSheet(BuildContext context) async {
    await onToggleThemeBottomSheet<SupportedTheme>(context: context).then(
        (selectedTheme) => selectedTheme != null
            ? context.read<SettingBloc>().add(ToggleTheme(selectedTheme))
            : null);
  }

  Future<void> showToggleLanguageBottomSheet(BuildContext context) async {
    await onToggleLanguageBottomSheet<SupportedLanguage>(context: context).then(
        (selectedLanguage) => selectedLanguage != null
            ? context.read<SettingBloc>().add(ToggleLanguage(selectedLanguage))
            : null);
  }
}
