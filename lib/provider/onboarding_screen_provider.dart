
import 'package:flutter/widgets.dart';

class OnboardingScreenProvider extends ChangeNotifier{
  int pageIndex = 0;

  PageController pageController = PageController();

  void onTabChanged() {
    pageController.jumpToPage(pageIndex);
    notifyListeners();
  }
}