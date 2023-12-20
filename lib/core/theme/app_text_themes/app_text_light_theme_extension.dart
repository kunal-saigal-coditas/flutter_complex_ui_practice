import 'package:complex_ui_assignment/core/constants/constants.dart';
import 'package:complex_ui_assignment/core/theme/app_text_themes/app_text_theme_extensions.dart';
import 'package:flutter/material.dart';

class AppTextLightThemeExtension extends AppTextThemeExtension {
  AppTextLightThemeExtension({
    super.titleTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w800,
      fontFamily: 'Toronto Subway',
    ),
    super.headerTextStyle = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    super.headingTextStyle = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    super.mediumTextStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Toronto Subway',
    ),
    super.labelTextStyle = const TextStyle(
      color: ColorConstants.orange1,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    super.subtextStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  });
}
