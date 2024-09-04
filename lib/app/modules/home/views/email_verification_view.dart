import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/email_verification_controller.dart';
import 'package:sizer/sizer.dart';

class EmailVerificationView extends GetView<EmailVerificationController> {
  const EmailVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            alignment: AlignmentDirectional.center,
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageWidget(
                    "assets/image/dreams.png",
                    width: 10.w,
                    height: 10.w,
                    fit: BoxFit.cover,
                  ),
                  SizeBoxWidget(
                    height: 5.w,
                  ),
                  TextWidget(
                    "Verify your email address",
                    fontFamily: "Satoshi",
                    fontSize: 16.sp,
                    color: Color(0xFFE86A53),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: TextWidget(
                      "We have sent you 5 - digit verification code at brown@dumpmail.com",
                      fontSize: 14.sp,
                      fontFamily: "Satoshi",
                      color: Color(0xFF999999),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 2.h, left: 4.w, right: 4.w, bottom: 4.h),
                    child: Pinput(
                      onCompleted: (value) {},
                      showCursor: true,
                      length: 5,
                      // Adjust this to the desired code length

                      cursor: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.w),
                            child: Container(
                              width:6.w,
                              height: 0.4.h,
                              color: Color(0xFFE86A53),
                            ),
                          )
                        ],
                      ),
                      controller: controller.otpController,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      defaultPinTheme: PinTheme(
                        width: 15.w,
                        height: 15.w,
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0XffCCCCCC),
                          ),
                          borderRadius: BorderRadius.circular(1.h),
                        ),
                      ),
                      onTap: () {
                        controller.otpController.clear();
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/role");
                    },
                    child: Container(
                      height: 7.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFE86A53),
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      child: Center(
                        child: TextWidget(
                          "Confirm",
                          fontSize: 16.sp,
                          fontFamily: "RedHatDisplay",
                          color: Color(0xFFFFFFFF),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          "Didn’t receive the code?",
                          fontSize: 14.sp,
                          color: Color(0xFF999999),
                          fontFamily: "Satoshi",
                        ),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Color(0xFFE86A53)),
                            child: TextWidget("Resend here",
                                fontSize: 14.sp,
                                fontFamily: "Satoshi",
                                color: Color(0xFFE86A53)))
                      ],
                    ),
                  ),
                ],
              ),
            ))));
  }
}
