import 'package:flutter/material.dart';

class ScreenView extends StatelessWidget {
  const ScreenView({super.key, required this.imageUrl, required this.text});
  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 550,
            left: 0,
            right: 0,
            child: Container(
              width: 395,
              height: 300,
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                  55,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
