import 'package:flutter/material.dart';
import 'package:onboardingscreen/theme/app_color.dart';
import 'package:onboardingscreen/view/onboard_screen1.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Center(
          child: PageView(
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
      ),
    );
  }
}
