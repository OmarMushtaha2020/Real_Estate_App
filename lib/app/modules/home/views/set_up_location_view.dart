import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageWidget(
                    "assets/image/Illustration.png",
                    width: 263.w,
                    height: 263.w,
                    fit: BoxFit.cover,
                  ),
                  SizeBoxWidget(height: 20.h,),
                  TextWidget(
                    "Set your location",
                    fontFamily: "Satoshi",
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    color: const Color(0xFFE86A53),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: TextWidget(
                      "Let us know your location for best experience",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Satoshi",
                      color: const Color(0xFF999999),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizeBoxWidget(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeValueToClick(true);
                    },
                    child: Container(
                      height: 53.h,
                      decoration: BoxDecoration(
                        color: controller.isClick == false
                            ? const Color(0xFFE86A53)
                            : null,
                        border: controller.isClick == true
                            ? Border.all(
                          color: const Color(0XffCCCCCC),
                          width: 1.w,
                        )
                            : null,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: TextWidget(
                          "Allow Google Maps",
                          fontSize: 16.sp,
                          fontFamily: "RedHatDisplay",
                          fontWeight: FontWeight.w600,
                          color: controller.isClick == false
                              ? const Color(0xFFFFFFFF)
                              : const Color(0XffE86A53),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizeBoxWidget(
                    height: 21.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeValueToClick(false);
                    },
                    child: Container(
                      height: 53.h,
                      decoration: BoxDecoration(
                        color: controller.isClick == true
                            ? const Color(0xFFE86A53)
                            : null,
                        border: controller.isClick == false
                            ? Border.all(
                          color: const Color(0XffCCCCCC),
                          width: 1.w,
                        )
                            : null,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: TextWidget(
                          "Set Manually",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
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
