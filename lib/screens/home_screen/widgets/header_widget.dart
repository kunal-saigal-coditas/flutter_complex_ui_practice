import 'package:complex_ui_assignment/core/theme/buildContext_extension.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryName,
            style: context.appTextTheme.headingTextStyle,
          ),
          Text(
            'See All',
            style: context.appTextTheme.labelTextStyle,
          ),
        ],
      ),
    );
  }
}
