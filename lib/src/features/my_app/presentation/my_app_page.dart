import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/setting/presentation/bloc/setting_bloc.dart';
import 'package:demo_dprofiles/src/l10n/app_localizations.dart';
import 'package:demo_dprofiles/src/routes/app_route.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/utils/constant/string_constant.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_language.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyAppPage extends StatefulWidget {
  const MyAppPage({super.key});

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  late SupportedTheme _theme;
  late SupportedLanguage _language;
  late AppRouter _appRoute;

  @override
  void initState() {
    _theme = sharePreference.getTheme();
    _language = sharePreference.getLanguage();
    _appRoute = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => injector.get<SettingBloc>()),
      ],
      child: BlocProvider<SettingBloc>(
        create: (context) => injector.get<SettingBloc>(),
        child: BlocConsumer<SettingBloc, SettingState>(
          listener: (context, state) {
            if (state is ToggleThemeSuccess) {
              _theme = state.updatedTheme;
            }

            if (state is ToggleLanguageSuccess) {
              _language = state.updatedLanguage;
            }

            if (state is ToggleDarkModeSuccess) {
              _theme =
                  state.status ? SupportedTheme.dark : SupportedTheme.light;
            }
          },
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: _appRoute.config(),
              darkTheme: AppColorScheme.darkTheme,
              theme: AppColorScheme.lightTheme,
              themeMode: ThemeMode.light,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale(StrConts.en),
                Locale(StrConts.vi)
              ],
              locale: Locale(_language.getLanguageCode()),
            );
          },
        ),
      ),
    );
  }
}
