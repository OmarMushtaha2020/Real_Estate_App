import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/registration_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationView extends GetView<RegistrationController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
      init:RegistrationController() ,
      builder: (controller) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/imageBuilding.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Container(
                width: double.infinity,
                height: 393.h,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.r),
                    topLeft: Radius.circular(25.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        FadeInUp(
                          delay: Duration(milliseconds: 200),
                          child: SizedBox(
                            width: 60.w, // Set the desired width here
                            child: Divider(
                                thickness:3.h,
                                // Set the thickness of the divider here
                                color: const Color(
                                    0XffCDCFD1) // Set the color of the divider here
                                ),
                          ),
                        ),
                        SizeBoxWidget(
                          height: 31.h,
                        ),

                        FadeInUp(
                          delay: Duration(milliseconds: 400),

                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    controller.changeValueToClick(false);
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
                                              width: 1.h)
                                          : null,
                                      borderRadius: BorderRadius.circular(100.r),
                                    ),
                                    child: Center(
                                      child: TextWidget(
                                        "Login",
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "RedHatDisplay",
                                        color: controller.isClick == false
                                            ? const Color(0xFFFFFFFF)
                                            : const Color(0XffE86A53),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizeBoxWidget(
                                width: 21.w,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    controller.changeValueToClick(true);
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
                                              width: 1.w)
                                          : null,
                                      borderRadius: BorderRadius.circular(100.r),
                                    ),
                                    child: Center(
                                      child: TextWidget(
                                        "Sign Up",
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
                              ),
                            ],
                          ),
                        ),
                        // Uncomment and update the following section if needed
                        SizeBoxWidget(
                          height: 18.h,
                        ),
                        FadeInUp(
                          delay: Duration(milliseconds: 600),

                          child: TextWidget(
                            "or continue with",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Satoshi",
                            color: const Color(0xFF999999),
                            textAlign: TextAlign.start,
                          ),
                        ),

                        SizeBoxWidget(height: 20.h,),
                        FadeInUp(
                          delay: Duration(milliseconds: 800),

                          child: ListView.separated(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => Container(
                              height: 53.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFFCCCCCC), width: 1.w),
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  TextWidget(
                                    "${controller.LoginMethods[index]}",
                                    fontSize: 16.sp,
                                    fontFamily: "RedHatDisplay",
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF040404),
                                    textAlign: TextAlign.start,
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 20.w),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: ImageWidget(
                                        "${controller.LoginMethodsIcon[index]}",
                                        width: 24.w,
                                        height: 24.h,

                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            separatorBuilder: (context, index) => SizedBox(
                              height: 15.h,
                            ),
                            itemCount: controller.LoginMethods.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
