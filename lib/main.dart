import 'package:flutter/material.dart';
import 'package:onboardingscreen/provider/onboarding_screen_provider.dart';
import 'package:onboardingscreen/view/onboarding_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnboardingScreenProvider(),),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OnBoarding Screen',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const OnboardingScreen(),
      ),
    );
  }
}
