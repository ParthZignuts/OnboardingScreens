import 'package:flutter/material.dart';
import 'package:onboardingscreen/provider/onboarding_screen_provider.dart';
import 'package:onboardingscreen/theme/app_color.dart';
import 'package:onboardingscreen/view/onboard_screen1.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../theme/textstyles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OnboardingScreenProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: provider.pageController,
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
                onPageChanged: (int index) {
                  provider.pageIndex = index;
                  provider.onTabChanged();
                },
              ),
            ),
            Consumer<OnboardingScreenProvider>(
                builder: (BuildContext context, value, Widget? child) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      (provider.pageIndex == 2)
                          ? AppColor.orange
                          : AppColor.amberAccent,
                    ),
                  ),
                  onPressed: (provider.pageIndex == 2) ? () {} : null,
                  child: const Text(
                    'Get Started',
                    style: TextStyles.h3BoldBlack,
                  ),
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SmoothPageIndicator(
                controller: provider.pageController,
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
