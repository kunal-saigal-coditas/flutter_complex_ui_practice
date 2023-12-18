// import 'package:complex_ui_assignment/screens/home_screen/home_page.dart';
// import 'package:complex_ui_assignment/screens/home_screen/home_screen.dart';
import 'package:complex_ui_assignment/data/local_data_source/local_data_source.dart';
import 'package:complex_ui_assignment/core/di/injector.dart';
import 'package:complex_ui_assignment/screens/onboarding_screens/main_feature.dart';
// import 'package:complex_ui_assignment/screens/onboarding_screens/screen_model.dart';
// import 'package:complex_ui_assignment/screens/settings_screen/settings_screen.dart';
import 'package:complex_ui_assignment/core/theme/dark_theme.dart';
import 'package:complex_ui_assignment/core/theme/light_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

// import 'screens/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.injectorFunction();
  await (GetIt.I<LocalDataSource>()).init();

  runApp(
    const MyApp(),
  );
}

bool themeSetting = (GetIt.I<LocalDataSource>()).getSavedSetting();

final ValueNotifier<bool> darkModeOn = ValueNotifier<bool>(themeSetting);

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

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
              theme: buildLightTheme(),
              darkTheme: buildDarkTheme(),
              home: MainFeaturesPage(),
            ),
          );
        });
  }
}
