import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  var currentPage = 0.obs;
  final PageController pageController = PageController();

  List<String> onboardingImages = [
    'assets/image/imageOne.png',
    'assets/image/imageTwo.png',
  ];

  List<String> onboardingTexts = [
    'Real Estate\n Service at Your\n Finger',
    'Negotiable Price \n  Best Experience\n ',
  ];

  List<String> buttonLabels = [
    'Start',
    'Next',
  ];

  void nextPage() {
    if (currentPage.value < onboardingImages.length - 1) {
      currentPage.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAndToNamed("/registration_screen");
      // Handle what happens on the last page, e.g., navigate to the main screen
    }
  }
}
