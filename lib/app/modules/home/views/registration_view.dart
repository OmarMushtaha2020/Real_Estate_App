import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/registration_controller.dart';
import 'package:sizer/sizer.dart';

class RegistrationView extends GetView<RegistrationController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
      init:RegistrationController() ,
      builder: (controller) {
        return Container(
          decoration: BoxDecoration(
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
                height: 50.h,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3.h),
                    topLeft: Radius.circular(3.h),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 17.w, // Set the desired width here
                          child: Divider(
                              thickness: 0.60.h,
                              // Set the thickness of the divider here
                              color: Color(
                                  0XffCDCFD1) // Set the color of the divider here
                              ),
                        ),
                        SizeBoxWidget(
                          height: 2.h,
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  controller.changeValueToClick();
                                },
                                child: Container(
                                  height: 7.h,
                                  decoration: BoxDecoration(
                                    color: controller.isClick == false
                                        ? Color(0xFFE86A53)
                                        : null,
                                    border: controller.isClick == true
                                        ? Border.all(
                                            color: Color(0XffCCCCCC),
                                            width: 0.3.w)
                                        : null,
                                    borderRadius: BorderRadius.circular(10.h),
                                  ),
                                  child: Center(
                                    child: TextWidget(
                                      "Login",
                                      fontSize: 16.sp,
                                      fontFamily: "RedHatDisplay",
                                      color: controller.isClick == false
                                          ? Color(0xFFFFFFFF)
                                          : Color(0XffE86A53),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizeBoxWidget(
                              width: 4.w,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  controller.changeValueToClick();
                                },
                                child: Container(
                                  height: 7.h,
                                  decoration: BoxDecoration(
                                    color: controller.isClick == true
                                        ? Color(0xFFE86A53)
                                        : null,
                                    border: controller.isClick == false
                                        ? Border.all(
                                            color: Color(0XffCCCCCC),
                                            width: 0.3.w)
                                        : null,
                                    borderRadius: BorderRadius.circular(10.h),
                                  ),
                                  child: Center(
                                    child: TextWidget(
                                      "Sign Up",
                                      fontSize: 16.sp,
                                      fontFamily: "RedHatDisplay",
                                      color: controller.isClick == true
                                          ? Color(0xFFFFFFFF)
                                          : Color(0XffE86A53),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Uncomment and update the following section if needed
                        SizeBoxWidget(
                          height: 2.h,
                        ),
                        TextWidget(
                          "or continue with",
                          fontSize: 14.sp,
                          fontFamily: "Satoshi",
                          color: Color(0xFF999999),
                          textAlign: TextAlign.start,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Container(
                            height: 7.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFCCCCCC), width: 0.3.w),
                              borderRadius: BorderRadius.circular(10.h),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 4.w),
                                  child: ImageWidget(
                                    "${controller.LoginMethodsIcon[index]}",
                                    width: 5.w,
                                    height: 5.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Spacer(),
                                TextWidget(
                                  "${controller.LoginMethods[index]}",
                                  fontSize: 16.sp,
                                  fontFamily: "RedHatDisplay",
                                  color: Color(0xFF040404),
                                  textAlign: TextAlign.start,
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 2.h,
                          ),
                          itemCount: controller.LoginMethods.length,
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
