import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:complex_ui_assignment/screens/home_screen/home_screen.dart';
import 'package:complex_ui_assignment/screens/onboarding_screens/screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainFeaturesPage extends StatelessWidget {
  MainFeaturesPage({super.key});

  final _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background,
      body: Column(
        children: [
          SizedBox(
            height: 727.h,
            child: PageView(
              controller: _pagecontroller,
              children: const [
                ScreenView(
                  imageUrl: 'assets/images/intro13756770.jpg',
                  text: 'User friendly mp3 music player for your device',
                ),
                ScreenView(
                  imageUrl: 'assets/images/intro2.png',
                  text: 'We provide a better audio experience than others',
                ),
                ScreenView(
                  imageUrl: 'assets/images/intro13756851.jpg',
                  text: 'Listen to the best audio and music with Mume now !',
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _pagecontroller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: context.appColors.primary,
              dotColor: context.appColors.secondary,
              dotHeight: 7,
              dotWidth: 7,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                int? index = _pagecontroller.page?.round();
                if (index! < 2) {
                  _pagecontroller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: context.appColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    42.0,
                  ),
                ),
              ),
              child: Text(
                'Next',
                style: context.appTextTheme.headingTextStyle.copyWith(
                  color: context.appColors.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
