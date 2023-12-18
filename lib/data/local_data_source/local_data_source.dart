import 'package:complex_ui_assignment/core/constants/texts_and_images.dart/string_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource {
  late SharedPreferences sharedPreferenceInstance;
  Future<void> init() async {
    sharedPreferenceInstance = await SharedPreferences.getInstance();
  }

  void saveSetting(bool currentsetting) async {
    bool savedSetting = getSavedSetting();
    if (savedSetting == currentsetting) {
    } else {
      sharedPreferenceInstance.setBool(
          StringConstants.sharedPrefKey, currentsetting);
    }
  }

  bool getSavedSetting() {
    final savedString =
        sharedPreferenceInstance.getBool(StringConstants.sharedPrefKey) ??
            false;

    return savedString;
  }
}
