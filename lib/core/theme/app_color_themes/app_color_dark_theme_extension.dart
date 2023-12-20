import 'package:complex_ui_assignment/core/constants/constants.dart';
import 'package:complex_ui_assignment/core/theme/app_color_themes/app_color_theme_extensions.dart';
import 'package:flutter/material.dart';

class AppColorsDarkThemeExtension extends AppColorsThemeExtension {
  AppColorsDarkThemeExtension({
    super.primary = ColorConstants.orange1,
    super.onPrimary = Colors.white,
    super.secondary = const Color.fromARGB(255, 106, 105, 105),
    super.onSecondary = ColorConstants.orange1,
    super.error = const Color(0xffcf6679),
    super.onError = Colors.black,
    super.background = const Color(0xff121212),
    super.onBackground = Colors.white,
  });
}
