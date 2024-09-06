import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/email_verification_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageWidget(
                    "assets/image/dreams.png",
                    width: 38.w,
                    height: 38.w,
                    fit: BoxFit.contain,
                  ),
                  SizeBoxWidget(height: 20.h),

                  TextWidget(
                    "Verify your email address",
                    fontFamily: "Satoshi",
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: Color(0xFFE86A53),
                  ),
                  SizeBoxWidget(height: 5.h),

                  TextWidget(
                    "We have sent you 5 - digit verification code at brown@dumpmail.com",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Satoshi",
                    color: Color(0xFF999999),
                    textAlign: TextAlign.start,
                  ),
                  SizeBoxWidget(height: 20.h), // Added for spacing consistency

                  Pinput(
                    onCompleted: (value) {},
                    showCursor: true,
                    length: 5,
                    // Adjust this to the desired code length

                    cursor: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width:20.w,
                          height: 3.h,
                          color: Color(0xFFE86A53),
                        )
                      ],
                    ),
                    controller: controller.otpController,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    defaultPinTheme: PinTheme(
                      width: 64.w,
                      height: 60.w,

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
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    onTap: () {
                      controller.otpController.clear();
                    },
                  ),
                  SizeBoxWidget(height: 20.h), // Added for spacing consistency

                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/role");
                    },
                    child: Container(
                      height: 53.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFE86A53),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: TextWidget(
                          "Confirm",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: "RedHatDisplay",
                          color: Color(0xFFFFFFFF),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          "Didn’t receive the code?",
                          fontSize: 14.sp,fontWeight: FontWeight.w400,
                          color: Color(0xFF999999),
                          fontFamily: "Satoshi",
                        ),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Color(0xFFE86A53)),
                            child: TextWidget("Resend here",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
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
