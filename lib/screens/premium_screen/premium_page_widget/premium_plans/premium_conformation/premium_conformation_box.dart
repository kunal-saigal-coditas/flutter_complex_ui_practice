import 'package:complex_ui_assignment/data_and_constants/texts_and_images.dart/images.dart';
import 'package:flutter/material.dart';

import '../../../../../data_and_constants/constants.dart';

class PremiumConformationBox extends StatelessWidget {
  const PremiumConformationBox({super.key, required this.month});
  final String month;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      alignment: Alignment.center,
      title: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: 120,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child: Image.asset(
              AllImages.crownImage,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Congratulations!",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "You have Successfully Subscribed $month of Premium.Enjoy the benefits!",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(8)),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'OK',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
