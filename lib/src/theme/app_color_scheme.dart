import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

ColorScheme colorScheme(context) => Theme.of(context).colorScheme;

class AppColorScheme {
  static final lightTheme = FlexThemeData.light(
      background: const Color(0xffFFFFFF),
      scheme: FlexScheme.indigo,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 7,
      swapLegacyOnMaterial3: true,
      swapColors: true,
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
      background: const Color(0xff1a202a),
      scheme: FlexScheme.indigo,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 13,
      appBarStyle: FlexAppBarStyle.material,
      swapLegacyOnMaterial3: true,
      swapColors: true,
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
