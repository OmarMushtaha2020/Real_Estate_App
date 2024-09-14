import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';

class AppointmentSuccessView extends GetView {
  const AppointmentSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizeBoxWidget(height: 20.h,),

              Container(child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    TextWidget("You’re done!",color: Color(0XffE86A53),fontSize: 14.sp,fontFamily: "Satoshi",fontWeight: FontWeight.w700,),
                    TextWidget("Thanks for choosing our platform, all the best for you",fontFamily: "Satoshi",color: Color(0xFF999999),fontSize: 14.sp,fontWeight: FontWeight.w500,height: 0,),

                  ],
                ),
              ),width: double.infinity,height: 95.h,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xFFFFFFFF),
              ),
              ),
              SizeBoxWidget(height: 20.h,),
              Container(child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: ImageWidget("assets/image/Success Illustration.png",height: 160.h,width: 160.w,fit: BoxFit.contain,)),
                    SizeBoxWidget(height: 20.h,),

                    TextWidget("Appointment Success!",color: Color(0XffE86A53),fontSize: 14.sp,fontWeight: FontWeight.w700,fontFamily: "Satoshi"),

                    SizeBoxWidget(height: 5.h,),
                    TextWidget("You’ve complete the appointment process, you can see your appointment detail below",color: Color(0xFF999999),fontSize: 14.sp,fontWeight: FontWeight.w500,fontFamily: "Satoshi"),
                    SizeBoxWidget(height: 20.h,),

                    Row(children: [
                      Center(child: ImageWidget("assets/image/calendar.png",height: 24.h,width: 24.w,fit: BoxFit.cover,)),
                      SizeBoxWidget(width: 8.w,),

                      TextWidget("24/07/2024 - 26/07/2024",color: Color(0xFF999999),fontSize: 14.sp,fontWeight: FontWeight.w500,fontFamily: "Satoshi",),

                    ],),
                    SizeBoxWidget(height: 5.h,),

                    Row(children: [
                      Center(child: ImageWidget("assets/image/profile-2user.png",height: 24.h,width: 24.w,fit: BoxFit.cover,)),
                      SizeBoxWidget(width: 8.w,),

                      TextWidget("8 Guests",color: Color(0xFF999999),fontSize: 14.sp,fontWeight: FontWeight.w500,fontFamily: "Satoshi",),

                    ],),
                    SizeBoxWidget(height: 5.h,),

                    Row(children: [
                      Center(child: ImageWidget("assets/image/call.png",height: 24.h,width: 24.w,fit: BoxFit.cover,)),
                      SizeBoxWidget(width: 8.w,),

                      TextWidget("+01 234 567",color: Color(0xFF999999),fontSize: 14.sp,fontWeight: FontWeight.w500,fontFamily: "Satoshi",),

                    ],),
                    SizeBoxWidget(height: 5.h,),
                    Row(children: [
                      Center(child: ImageWidget("assets/image/sms.png",height: 24.h,width: 24.w,fit: BoxFit.cover,)),
                      SizeBoxWidget(width: 8.w,),

                      TextWidget("brown@dumpmail.com",color: Color(0xFF999999),fontSize: 14.sp,fontWeight: FontWeight.w500,fontFamily: "Satoshi",),

                    ],),
                    SizeBoxWidget(height: 10.h,),

                    TextWidget("Hope you have a pleasant experience!",color: Color(0xFF999999),fontSize: 14.sp,fontWeight: FontWeight.w400,fontFamily: "Satoshi",),

                  ],
                ),
              ),width: double.infinity,height: 499.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0XFFF8F8F8)
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Get.offNamed('/Layout');

                },
                child: Container(
                  height: 53.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:
                    Color(0xFFE86A53)

                    ,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Center(
                    child: TextWidget(
                      "Back to Home",
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      fontFamily: "RedHatDisplay",
                      color: Color(0xFFFFFFFF),

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
  }
}
