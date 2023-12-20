import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:flutter/material.dart';
import 'premium_page_widget/premium_page_tile.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background,
      appBar: AppBar(
        backgroundColor: context.appColors.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Set the custom icon here
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Subscribe to Premium",
                textAlign: TextAlign.center,
                style: context.appTextTheme.titleTextStyle.copyWith(
                  color: context.appColors.onBackground,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Enjoy listening songs with better audio quality, without restrictions, and without ads.",
                textAlign: TextAlign.center,
                style: context.appTextTheme.mediumTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              const PremiumPageTile(
                boxColor: Colors.orange,
                month: 'month',
                rate: 9.99,
              ),
              const SizedBox(
                height: 20,
              ),
              const PremiumPageTile(
                boxColor: Colors.purple,
                month: "3 months",
                rate: 19.99,
              ),
              const SizedBox(
                height: 20,
              ),
              const PremiumPageTile(
                boxColor: Colors.redAccent,
                month: "12 months",
                rate: 75.99,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
