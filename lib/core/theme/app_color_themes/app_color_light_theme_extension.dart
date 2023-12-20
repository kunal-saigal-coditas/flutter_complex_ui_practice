import 'package:complex_ui_assignment/core/constants/constants.dart';
import 'package:complex_ui_assignment/core/theme/app_color_themes/app_color_theme_extensions.dart';
import 'package:flutter/material.dart';

class AppColorsLightThemeExtension extends AppColorsThemeExtension {
  AppColorsLightThemeExtension({
    super.primary = ColorConstants.orange1,
    super.onPrimary = Colors.white,
    super.secondary = const Color.fromARGB(255, 252, 220, 192),
    super.onSecondary = ColorConstants.orange1,
    super.error = const Color(0xffb00020),
    super.onError = Colors.white,
    super.background = Colors.white,
    super.onBackground = Colors.black,
  });
}
