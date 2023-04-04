import 'package:flutter/material.dart';
import 'package:onboardingscreen/theme/app_color.dart';
import 'package:onboardingscreen/view/onboard_screen1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../theme/textstyles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPageIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: const [
                  OnboardScreens(
                      imgSrc: 'assets/images/s1.png',
                      mainContent: 'Welcome to Surf.',
                      description:
                          'I provide essential stuff for you \n ui designs every tuesday!'),
                  OnboardScreens(
                      imgSrc: 'assets/images/s2.png',
                      mainContent: 'Design Template uploads \n Every Tuesday!',
                      description:
                          'Make sure to take a look my uplab \n profile every tuesday'),
                  OnboardScreens(
                      imgSrc: 'assets/images/s3.png',
                      mainContent: 'Download Now',
                      description:
                          'You can follow me if you wantand comment \n on any to get some freebies'),
                ],
              ),
            ),
            (_currentPageIndex == 2)? Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    AppColor.orange,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Get Started',
                  style: TextStyles.h3BoldBlack,
                ),
              ),
            ): const Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    AppColor.amberAccent,
                  ),
                ),
                onPressed: null,
                child: Text(
                  'Get Started',
                  style: TextStyles.h3BoldBlack,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const JumpingDotEffect(
                  dotColor: AppColor.black,
                  activeDotColor: AppColor.orange,
                  dotHeight: 12.0,
                  dotWidth: 12.0,
                  verticalOffset: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
