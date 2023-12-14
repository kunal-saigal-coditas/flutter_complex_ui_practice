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
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: Container(
              // width: 35,
              height: 350,
              padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                  55,
                ),
              ),
              child: Column(
                children: [
                  Flexible(
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
