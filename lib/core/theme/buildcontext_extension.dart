import 'package:complex_ui_assignment/core/theme/app_color_themes/app_color_theme_extensions.dart';
import 'package:complex_ui_assignment/core/theme/app_text_themes/app_text_theme_extensions.dart';
import 'package:complex_ui_assignment/core/theme/themedata_extension.dart';
import 'package:flutter/material.dart';

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);

  AppColorsThemeExtension get appColors => theme.appColors;
  AppTextThemeExtension get appTextTheme => theme.appTextTheme;
}
