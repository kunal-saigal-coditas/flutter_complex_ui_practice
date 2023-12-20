import 'package:complex_ui_assignment/core/constants/texts_and_images.dart/images.dart';
import 'package:complex_ui_assignment/core/constants/texts_and_images.dart/premium_page_text.dart';
import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class PremiumPlansWidget extends StatelessWidget {
  const PremiumPlansWidget({
    super.key,
    required this.rate,
    required this.month,
  });
  final double rate;
  final String month;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 60,
          child: Image.asset(
            AllImages.crownImage,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                "\$ $rate ",
                style: context.appTextTheme.titleTextStyle.copyWith(
                  color: context.appColors.onPrimary,
                ),
              ),
            ),
            Text(
              "/$month",
              style: context.appTextTheme.headerTextStyle.copyWith(
                color: context.appColors.onPrimary,
              ),
            ),
          ],
        ),
        Divider(
          color: context.appColors.onPrimary,
          thickness: 1,
        ),
        // const SizedBox(height: 10),
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.done,
                color: context.appColors.onPrimary,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  PremiumTexts.benefitsText1,
                  softWrap: true,
                  style: context.appTextTheme.mediumTextStyle.copyWith(
                    color: context.appColors.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.done,
                color: context.appColors.onPrimary,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  PremiumTexts.benefitsText2,
                  softWrap: true,
                  style: context.appTextTheme.mediumTextStyle.copyWith(
                    color: context.appColors.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.done,
                color: context.appColors.onPrimary,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  PremiumTexts.benefitsText3,
                  style: context.appTextTheme.mediumTextStyle.copyWith(
                    color: context.appColors.onPrimary,
                  ),
                  softWrap: true,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
