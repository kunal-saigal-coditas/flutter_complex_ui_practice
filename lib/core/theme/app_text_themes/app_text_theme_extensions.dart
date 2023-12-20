import 'package:flutter/material.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  final TextStyle titleTextStyle;
  final TextStyle headerTextStyle;
  final TextStyle headingTextStyle;
  final TextStyle labelTextStyle;
  final TextStyle mediumTextStyle;
  final TextStyle subtextStyle;

  AppTextThemeExtension({
    required this.titleTextStyle,
    required this.headerTextStyle,
    required this.headingTextStyle,
    required this.labelTextStyle,
    required this.mediumTextStyle,
    required this.subtextStyle,
  });

  @override
  ThemeExtension<AppTextThemeExtension> copyWith({
    TextStyle? titleTextStyle,
    TextStyle? headerTextStyle,
    TextStyle? headingTextStyle,
    TextStyle? labelTextStyle,
    TextStyle? mediumTextStyle,
    TextStyle? subtextStyle,
  }) {
    return AppTextThemeExtension(
      headerTextStyle: headerTextStyle ?? this.headerTextStyle,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      headingTextStyle: headingTextStyle ?? this.headingTextStyle,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      mediumTextStyle: mediumTextStyle ?? this.mediumTextStyle,
      subtextStyle: subtextStyle ?? this.subtextStyle,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    if (other is! AppTextThemeExtension) {
      return this;
    }

    return AppTextThemeExtension(
      headerTextStyle:
          TextStyle.lerp(headerTextStyle, other.headerTextStyle, t)!,
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t)!,
      headingTextStyle:
          TextStyle.lerp(headingTextStyle, other.headingTextStyle, t)!,
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t)!,
      mediumTextStyle:
          TextStyle.lerp(mediumTextStyle, other.mediumTextStyle, t)!,
      subtextStyle: TextStyle.lerp(subtextStyle, other.subtextStyle, t)!,
    );
  }
}
