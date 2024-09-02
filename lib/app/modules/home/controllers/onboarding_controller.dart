import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  var currentPage = 0.obs;
  final PageController pageController = PageController();

  List<String> onboardingImages = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
  ];

  List<String> onboardingTexts = [
    'Welcome to our app!',
    'Discover amazing features!',
    'Get started now!',
  ];

  List<String> buttonLabels = [
    'Start',
    'Next',
    'Finish',
  ];

  void nextPage() {
    if (currentPage.value < onboardingImages.length - 1) {
      currentPage.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Handle what happens on the last page, e.g., navigate to the main screen
    }
  }
}
