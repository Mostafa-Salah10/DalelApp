import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class IndicatorProvider with ChangeNotifier {
  int currentIndex = 0;
  PageController controller = PageController();
  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void nextPage() {
    if (currentIndex != onboardingData.length - 1) {
      controller.animateToPage(currentIndex + 1,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }
}
