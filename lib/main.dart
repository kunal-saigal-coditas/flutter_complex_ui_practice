import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'package:complex_ui_assignment/core/di/injector.dart';
import 'package:complex_ui_assignment/core/theme/app_color_themes/app_color_dark_theme_extension.dart';
import 'package:complex_ui_assignment/core/theme/app_color_themes/app_color_light_theme_extension.dart';
import 'package:complex_ui_assignment/core/theme/app_text_themes/app_text_light_theme_extension.dart';

import 'package:complex_ui_assignment/data/local_data_source/local_data_source.dart';

import 'package:complex_ui_assignment/screens/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.injectorFunction();
  await GetIt.I<LocalDataSource>().init();
  runApp(const MyApp());
}

final bool currentSetting = GetIt.I<LocalDataSource>().getSavedSetting();
final ValueNotifier<bool> darkModeOn = ValueNotifier(currentSetting);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: darkModeOn,
        builder: (BuildContext context, bool value, Widget? child) {
          return ScreenUtilInit(
            designSize: const Size(
              375,
              812,
            ),
            builder: (context, child) => MaterialApp(
              themeMode: value ? ThemeMode.dark : ThemeMode.light,
              debugShowCheckedModeBanner: false,
              title: 'Mume Music Player',
              theme: ThemeData.light().copyWith(
                extensions: [
                  AppColorsLightThemeExtension(),
                  AppTextLightThemeExtension(),
                ],
              ),
              darkTheme: ThemeData.dark().copyWith(
                extensions: [
                  AppColorsDarkThemeExtension(),
                  AppTextLightThemeExtension()
                ],
              ),
              home: const HomeScreen(),
            ),
          );
        });
  }
}
