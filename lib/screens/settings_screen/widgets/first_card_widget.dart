import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:flutter/material.dart';
import '../../premium_screen/premium_page.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            gradient: LinearGradient(
              colors: [
                context.appColors.primary,
                context.appColors.primary.withOpacity(0.9),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 10),
              Text(
                "Enjoy All Benefits!",
                style: context.appTextTheme.headingTextStyle.copyWith(
                  color: context.appColors.onPrimary,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 245,
                child: Text(
                  "Enjoy listening songs with better audio quality, without restrictions,and without ads.",
                  style: context.appTextTheme.mediumTextStyle.copyWith(
                    color: context.appColors.onPrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    context.appColors.onPrimary,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PremiumPage(),
                    ),
                  );
                },
                child: Text(
                  "Get Premium",
                  style: context.appTextTheme.labelTextStyle.copyWith(
                    color: context.appColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width,
          left: 120,
          top: 10,
          bottom: 0.2,
          child: Image.asset("assets/images/image1.png"),
        )
      ],
    );
  }
}
