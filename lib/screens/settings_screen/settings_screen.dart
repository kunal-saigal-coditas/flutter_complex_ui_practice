import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:get_it/get_it.dart';

import 'package:complex_ui_assignment/main.dart';

import 'package:complex_ui_assignment/screens/settings_screen/widgets/first_card_widget.dart';
import 'package:complex_ui_assignment/screens/settings_screen/widgets/setting_name.dart';

import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';

import 'package:complex_ui_assignment/data/local_data_source/local_data_source.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void _toggleTheme(bool newValue) {
    setState(() {
      darkModeOn.value = newValue;
      (GetIt.I<LocalDataSource>()).saveSetting(newValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: darkModeOn,
      builder: (BuildContext context, bool value, Widget? child) {
        return Scaffold(
          backgroundColor: context.appColors.background,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: context.appColors.background,
            elevation: 1,
            shadowColor: context.appColors.background,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  CupertinoIcons.music_note_2,
                  color: context.appColors.primary,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Settings",
                )
              ],
            ),
            actions: const [
              Icon(
                CupertinoIcons.ellipsis_circle,
                size: 30,
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const FirstWidget(),
                const SizedBox(height: 10),
                const Divider(),
                const SettingsName(
                  iconToUse: Icon(Icons.file_upload_outlined),
                  settingName: "Backup",
                  endingWidget: Icon(Icons.arrow_forward_ios),
                ),
                const SettingsName(
                  iconToUse: Icon(Icons.notifications_outlined),
                  settingName: "Notification",
                  endingWidget: Icon(Icons.arrow_forward_ios),
                ),
                const SettingsName(
                  iconToUse: Icon(Icons.language),
                  settingName: "Language",
                  endingWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("English(Us)"),
                        Icon(Icons.arrow_forward_ios)
                      ]),
                ),
                SettingsName(
                  iconToUse: const Icon(Icons.remove_red_eye_outlined),
                  settingName: "Dark Mode",
                  endingWidget: CupertinoSwitch(
                    activeColor: context.appColors.primary,
                    value: value,
                    onChanged: _toggleTheme,
                  ),
                ),
                const SettingsName(
                  iconToUse: Icon(Icons.share_outlined),
                  settingName: "Share App",
                  endingWidget: Icon(Icons.arrow_forward_ios),
                ),
                const SettingsName(
                  iconToUse: Icon(Icons.file_open_outlined),
                  settingName: "Change Log",
                  endingWidget: Icon(Icons.arrow_forward_ios),
                ),
                const SettingsName(
                  iconToUse: Icon(Icons.privacy_tip_outlined),
                  settingName: "Privacy Policy",
                  endingWidget: Icon(Icons.arrow_forward_ios),
                ),
                const SettingsName(
                    iconToUse: Icon(Icons.info_outlined),
                    settingName: "FAQ",
                    endingWidget: Icon(Icons.arrow_forward_ios)),
                const SettingsName(
                  iconToUse: Icon(Icons.exit_to_app),
                  settingName: "Quit",
                  endingWidget: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
