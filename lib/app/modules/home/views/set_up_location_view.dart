import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_controller.dart';
import 'package:sizer/sizer.dart';

class SetUpLocationView extends StatelessWidget {
  const SetUpLocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SetUpLocationController>(
      init: SetUpLocationController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageWidget(
                    "assets/image/Illustration.png",
                    width: 60.w,
                    height: 60.w,
                    fit: BoxFit.cover,
                  ),
                  TextWidget(
                    "What are you looking for?",
                    fontFamily: "Satoshi",
                    fontSize: 20.sp,
                    color: const Color(0xFFE86A53),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: TextWidget(
                      "Let us know your location for best experience",
                      fontSize: 16.sp,
                      fontFamily: "Satoshi",
                      color: const Color(0xFF999999),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizeBoxWidget(
                    height: 4.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeValueToClick();
                    },
                    child: Container(
                      height: 7.h,
                      decoration: BoxDecoration(
                        color: controller.isClick == false
                            ? const Color(0xFFE86A53)
                            : null,
                        border: controller.isClick == true
                            ? Border.all(
                          color: const Color(0XffCCCCCC),
                          width: 0.3.w,
                        )
                            : null,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      child: Center(
                        child: TextWidget(
                          "Login",
                          fontSize: 16.sp,
                          fontFamily: "RedHatDisplay",
                          color: controller.isClick == false
                              ? const Color(0xFFFFFFFF)
                              : const Color(0XffE86A53),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizeBoxWidget(
                    height: 4.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeValueToClick();
                    },
                    child: Container(
                      height: 7.h,
                      decoration: BoxDecoration(
                        color: controller.isClick == true
                            ? const Color(0xFFE86A53)
                            : null,
                        border: controller.isClick == false
                            ? Border.all(
                          color: const Color(0XffCCCCCC),
                          width: 0.3.w,
                        )
                            : null,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      child: Center(
                        child: TextWidget(
                          "Sign Up",
                          fontSize: 16.sp,
                          fontFamily: "RedHatDisplay",
                          color: controller.isClick == true
                              ? const Color(0xFFFFFFFF)
                              : const Color(0XffE86A53),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
