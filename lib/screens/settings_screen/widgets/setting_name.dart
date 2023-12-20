import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class SettingsName extends StatelessWidget {
  final Icon iconToUse;
  final String settingName;
  final Widget endingWidget;

  const SettingsName({
    super.key,
    required this.iconToUse,
    required this.settingName,
    required this.endingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: context.appColors.background,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                iconToUse,
                const SizedBox(width: 15),
                Text(
                  settingName,
                  style: context.appTextTheme.mediumTextStyle,
                )
              ],
            ),
            endingWidget
          ],
        ),
      ),
    );
  }
}
