import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

ColorScheme colorScheme(context) => Theme.of(context).colorScheme;

class AppColorScheme {
  static final lightTheme = FlexThemeData.light(
      scaffoldBackground: const Color(0xffFFFFFF),
      colors: const FlexSchemeColor(
        primary: Color(0xff58bd7d),
        primaryContainer: Color(0xffd0e4ff),
        secondary: Color(0xff23262f),
        secondaryContainer: Color(0xff777e90),
        tertiary: Color(0xff006875),
        tertiaryContainer: Color(0xff95f0ff),
        appBarColor: Color(0xff777e90),
        error: Color(0xffb00020),
      ),
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 7,
      subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          thinBorderWidth: 2.0,
          thickBorderWidth: 0.5,
          defaultRadius: 5.0,
          filledButtonRadius: 5.0,
          elevatedButtonRadius: 12.0,
          elevatedButtonSchemeColor: SchemeColor.onPrimary,
          elevatedButtonSecondarySchemeColor: SchemeColor.primary,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorUnfocusedBorderIsColored: false,
          inputDecoratorFocusedBorderWidth: 1.5,
          dialogRadius: 10.0,
          timePickerDialogRadius: 10.0,
          bottomAppBarSchemeColor: SchemeColor.surface,
          bottomSheetBackgroundColor: SchemeColor.tertiary),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true);
  static final darkTheme = FlexThemeData.dark(
      scaffoldBackground: const Color(0xff2A2F3C),
      colors: const FlexSchemeColor(
        primary: Color(0xff58bd7d),
        primaryContainer: Color(0xff00325b),
        secondary: Color(0xfff8f9fa),
        secondaryContainer: Color(0xff777e90),
        tertiary: Color(0xff86d2e1),
        tertiaryContainer: Color(0xff004e59),
        appBarColor: Color(0xff777e90),
        error: Color(0xffcf6679),
      ),
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 13,
      appBarStyle: FlexAppBarStyle.material,
      subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useTextTheme: true,
          defaultRadius: 5.0,
          thinBorderWidth: 2.0,
          thickBorderWidth: 0.5,
          filledButtonRadius: 5.0,
          elevatedButtonRadius: 12.0,
          elevatedButtonSchemeColor: SchemeColor.onPrimary,
          elevatedButtonSecondarySchemeColor: SchemeColor.primary,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorUnfocusedBorderIsColored: false,
          inputDecoratorFocusedBorderWidth: 1.5,
          dialogRadius: 10.0,
          timePickerDialogRadius: 10.0,
          bottomAppBarSchemeColor: SchemeColor.surface,
          bottomSheetBackgroundColor: SchemeColor.tertiaryContainer),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true);
}
