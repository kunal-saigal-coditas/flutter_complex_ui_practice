import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../onboarding_screens/main_feature.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
    ).then((value) {
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(
          builder: (ctx) => MainFeaturesPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/logo_2.png"),
                  width: 50,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Mume",
                  style: context.appTextTheme.titleTextStyle.copyWith(
                    color: context.appColors.primary,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            SpinKitCircle(
              color: context.appColors.primary,
              size: 70.0,
            ),
          ],
        ),
      ),
    );
  }
}
