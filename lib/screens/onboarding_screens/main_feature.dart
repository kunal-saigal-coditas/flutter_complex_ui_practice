import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../data_and_constants/constants.dart';
import '../home_screen/home_screen.dart';
import 'screen_model.dart';

class MainFeaturesPage extends StatelessWidget {
  MainFeaturesPage({super.key});

  final _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 800,
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
                activeDotColor: primaryColor,
                dotColor: Colors.grey,
                dotHeight: 7,
                dotWidth: 7),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              int? index = _pagecontroller.page?.round();
              if (index! < 2) {
                _pagecontroller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 140.0,
                vertical: 14.0,
              ),
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  42.0,
                ),
              ),
            ),
            child: const Text(
              'Next',
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
