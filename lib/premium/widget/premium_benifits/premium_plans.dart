import 'package:flutter/material.dart';
import '../../../data_and_constants/texts_and_images.dart/images.dart';

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
        // const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "\$ $rate ",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(
              Icons.done,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Listening with better audio quality",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(
              Icons.done,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Unlimited skips & shuffles play",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        )
      ],
    );
  }
}
