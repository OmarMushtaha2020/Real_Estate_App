import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/onboarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<OnBoardingController>(
        init: OnBoardingController(), // Make sure to initialize your controller if it's not already done
        builder: (controller) {
          return PageView.builder(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.currentPage.value = index;
            },
            itemCount: controller.onboardingImages.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(controller.onboardingImages[index]),
                  const SizedBox(height: 20),
                  Text(
                    controller.onboardingTexts[index],
                    style: const TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      controller.nextPage();
                    },
                    child: Text(controller.buttonLabels[index]),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
