import 'package:complex_ui_assignment/data_and_constants/texts_and_images.dart/images.dart';
import 'package:complex_ui_assignment/data_and_constants/texts_and_images.dart/premium_page_text.dart';
import 'package:flutter/material.dart';

class PremiumPlans extends StatelessWidget {
  const PremiumPlans({super.key, required this.rate, required this.month});
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
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Text(
              "/$month",
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
        const Divider(
          color: Colors.white,
          thickness: 1,
        ),
        // const SizedBox(height: 10),
        const Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.done,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  PremiumTexts.benefitsText1,
                  softWrap: true,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        const Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.done,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  PremiumTexts.benefitsText2,
                  softWrap: true,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        const Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.done,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  PremiumTexts.benefitsText3,
                  style: TextStyle(color: Colors.white, fontSize: 14),
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
