import 'package:flutter/material.dart';
import 'package:onboardingscreen/theme/textstyles.dart';

class OnboardScreens extends StatelessWidget {
  const OnboardScreens(
      {Key? key,
      required this.imgSrc,
      required this.mainContent,
      required this.description})
      : super(key: key);
  final String imgSrc;
  final String mainContent;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imgSrc),
        Text(
          mainContent,
          style: TextStyles.h1BoldBlack,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ],
    );
  }
}
