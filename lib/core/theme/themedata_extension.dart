import 'package:complex_ui_assignment/core/theme/app_color_themes/app_color_theme_extensions.dart';
import 'package:complex_ui_assignment/core/theme/app_text_themes/app_text_light_theme_extension.dart';
import 'package:complex_ui_assignment/core/theme/app_text_themes/app_text_theme_extensions.dart';
import 'package:flutter/material.dart';

extension AppThemeExtension on ThemeData {
  /// Usage example: Theme.of(context).appColors;
  AppColorsThemeExtension get appColors =>
      extension<AppColorsThemeExtension>()!;

  AppTextThemeExtension get appTextTheme =>
      extension<AppTextThemeExtension>() ?? AppTextLightThemeExtension();
}
