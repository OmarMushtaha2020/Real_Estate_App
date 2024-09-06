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
        // Make sure to initialize your controller if it's not already done
        builder: (controller) {
          return PageView.builder(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.currentPage.value = index;
            },
            itemCount: controller.onboardingImages.length,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageWidget(controller.onboardingImages[index],height: 369,width:355.62 ,fit: BoxFit.cover,),
                      SizeBoxWidget(
                        height: 4.h,
                      ),
                      TextWidget(
                        controller.onboardingTexts[index],
                        fontSize: 40.sp,
                        fontFamily: "RedHatDisplay",
                        color: Color(0xFFE86A53),
                        textAlign: TextAlign.start,
                      ),
                      SizeBoxWidget(
                        height: 4.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.nextPage();
                          print("object");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(
                              controller.buttonLabels[index],
                              textAlign: TextAlign.center,
                              color: Color(0xFF040404),
                              fontSize: 18.sp,
                              fontFamily: "Satoshi",
                            ),
                            SizeBoxWidget(
                              width: 2.h,
                            ),
                            ImageWidget("assets/image/arrow.png",width: 3.h,height: 3.h,fit: BoxFit.contain,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
