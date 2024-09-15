import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
   ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller){
        return  Scaffold(
          appBar: AppBar(
            title: TextWidget(
              'Profile',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0XffE86A53),
              fontFamily: "RedHatDisplay",
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          Container(
                            width: 64.w,
                            height: 64.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-600nw-1703979295.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizeBoxWidget(width: 15.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                'Chris Brown',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0XffE86A53),
                                fontFamily: "Satoshi",
                              ),
                              TextWidget(
                                'brown@dumpmail.com',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "RedHatDisplay",
                              ),
              
                            ],
                          ),
                          Spacer(),
                          ImageWidget("assets/image/Icon-4.png",width: 20.w,height: 20.h,fit: BoxFit.cover,),
                        ],
                      ),
                    ),
                    height: 80.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                  ),
                  SizeBoxWidget(height: 15.h,),
                  Container(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          TextWidget(
                            'General',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0XffE86A53),
                            fontFamily: "Satoshi",
                          ),
                          SizeBoxWidget(height: 10.h,),
              
                          Row(
                            children: [
                              TextWidget(
                                'Language',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
                              TextWidget(
                                'English',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
              
                            ],
                          ),
                          SizeBoxWidget(height: 5.h,),
                          Row(
                            children: [
                              TextWidget(
                                'Theme',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
                              TextWidget(
                                'Dark',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
              
                            ],
                          ),
                          SizeBoxWidget(height: 5.h,),
              
                          Row(
                            children: [
                              TextWidget(
                                'Hide Small Balance',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
              FlutterSwitch(height: 25.w,width:50.w,value: controller.isSwitched,activeColor: Color(0xFFE86A53), onToggle: (value){
                controller.changeValueSwitched(value);
              })
                            ],
                          ),
              
                        ],
                      ),
                    ),
                    height: 169.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                  ),
                  SizeBoxWidget(height: 15.h,),
              
                  Container(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          TextWidget(
                            'Security',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0XffE86A53),
                            fontFamily: "Satoshi",
                          ),
                          SizeBoxWidget(height: 10.h,),
              
                          Row(
                            children: [
                              TextWidget(
                                'Use Face ID',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
                              FlutterSwitch(height: 25.w,width:50.w,value: controller.isSwitched,activeColor: Color(0xFFE86A53), onToggle: (value){
                                controller.changeValueSwitched(value);
                              })
              
                            ],
                          ),
                          SizeBoxWidget(height: 5.h,),
                          Row(
                            children: [
                              TextWidget(
                                'Enable Passcode',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
                              FlutterSwitch(height: 25.w,width:50.w,value: controller.isSwitched,activeColor: Color(0xFFE86A53), onToggle: (value){
                                controller.changeValueSwitched(value);
                              })

                            ],
                          ),
                          SizeBoxWidget(height: 5.h,),
              
                          Row(
                            children: [
                              TextWidget(
                                'Privacy',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
Icon(Icons.arrow_forward_ios_rounded,size: 16.w,color: Color(0Xff999999),)
                            ],
                          ),
              
                        ],
                      ),
                    ),
                    height: 169.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                  ),
                  SizeBoxWidget(height: 15.h,),
              
                  Container(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            'Notifications',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0XffE86A53),
                            fontFamily: "Satoshi",
                          ),
                          SizeBoxWidget(height: 10.h,),
                          Row(
                            children: [
                              TextWidget(
                                'Allow SMS ',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
                              FlutterSwitch(height: 25.w,width:50.w,value: controller.isSwitched,activeColor: Color(0xFFE86A53), onToggle: (value){
                                controller.changeValueSwitched(value);
                              })
                            ],
                          ),

                          SizeBoxWidget(height: 5.h,),
              
                          Row(
                            children: [
                              TextWidget(
                                'Allow Email Notification',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0Xff999999),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
                              FlutterSwitch(height: 25.w,width:50.w,value: controller.isSwitched,activeColor: Color(0xFFE86A53), onToggle: (value){
                                controller.changeValueSwitched(value);
                              })
                            ],
                          ),
              
                        ],
                      ),
                    ),
                    height: 169.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                  ),
                  SizeBoxWidget(height: 15.h,),

                  Container(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            'Sign Out',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0XffE86A53),
                            fontFamily: "Satoshi",
                          ),
                          SizeBoxWidget(height: 10.h,),
                          Row(
                            children: [
                              TextWidget(
                                'Sign Out',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0XffE30B71),
                                fontFamily: "Satoshi",
                              ),
                              Spacer(),
                              ImageWidget("assets/image/logout.png"),

                            ],
                          ),
                        ],
                      ),
                    ),
                    height: 100.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(40.r),
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
