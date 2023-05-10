import 'package:complex_ui_assignment/theme/dark_theme.dart';
import 'package:complex_ui_assignment/theme/light_theme.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

final ValueNotifier<bool> darkModeOn = ValueNotifier(false);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: darkModeOn,
        builder: (BuildContext context, bool value, Widget? child) {
          return MaterialApp(
            themeMode: value ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            title: 'Mume Music Player',
            theme: buildLightTheme(),
            darkTheme: buildDarkTheme(),
            home: const SplashScreen(),
          );
        });
  }
}
