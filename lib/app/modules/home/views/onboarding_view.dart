import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/onboarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<OnBoardingController>(
        init: OnBoardingController(),
        builder: (controller) {
          return PageView.builder(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.currentPage.value = index;
            },
            itemCount: controller.onboardingImages.length,
            itemBuilder: (context, index) {
              // Adding the animation using AnimatedBuilder
              return AnimatedBuilder(
                animation: controller.pageController,
                builder: (context, child) {
                  // Calculate the scaling effect
                  double value = controller.pageController.position.haveDimensions
                      ? controller.pageController.page! - index
                      : 0.0;
                  value = (1 - (value.abs() * 0.3)).clamp(0.7, 1.0);

                  return Transform.scale(
                    scale: value,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ImageWidget(
                              controller.onboardingImages[index],
                              height: 369.h,
                              width: 355.62.w,
                              fit: BoxFit.contain,
                            ),
                            SizeBoxWidget(height: 52.h),
                            TextWidget(
                              controller.onboardingTexts[index],
                              fontSize: 40.sp,
                              fontFamily: "RedHatDisplay",
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFE86A53),
                              textAlign: TextAlign.start,
                            ),
                            SizeBoxWidget(height: 52.h),
                            GestureDetector(
                              onTap: () {
                                controller.nextPage();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextWidget(
                                    controller.buttonLabels[index],
                                    textAlign: TextAlign.center,
                                    color: const Color(0xFF040404),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Satoshi",
                                  ),
                                  SizeBoxWidget(width: 10.w),
                                  ImageWidget(
                                    "assets/image/arrow.png",
                                    width: 13.w,
                                    height: 13.h,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  SizeBoxWidget(width: 10.w),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
