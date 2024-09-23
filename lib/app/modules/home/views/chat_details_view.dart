import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/chat_details_controller.dart';

class ChatDetailsView extends GetView<ChatDetailsController> {
   ChatDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XffF8F8F8),
      appBar: AppBar(
        toolbarHeight: 110.h,
        iconTheme: IconThemeData(size: 20.w),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(
              'Steven Adams',
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color:  Color(0XffE86A53),
              fontFamily: "RedHatDisplay",
            ),
            SizeBoxWidget(width: 10.w,),

            ImageWidget("assets/image/Vector.png",width: 16.w,height: 16.w,fit: BoxFit.contain,color: Color(0xFF3F82FF)),
            SizeBoxWidget(width: 5.w,),

            TextWidget(
              'VERIFIED',
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF3F82FF),
              fontFamily: "Satoshi",
            ),

          ],
        ),
        centerTitle: true,
        actions: [
          ImageWidget(
            "assets/image/call.png",
            width: 24.w,
            height: 24.w,
            fit: BoxFit.cover,
          ),
          SizeBoxWidget(width: 15.w,),

          ImageWidget(
            "assets/image/video_call_image.png",
            width: 24.w,
            height: 24.w,
            fit: BoxFit.cover,
          ),

          SizeBoxWidget(width: 15.w,),

        ],
      ),

      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
              Container(child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Container(clipBehavior: Clip.antiAlias,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),child: ImageWidget("assets/image/imageBuilding.png",height: 108.h,width: 108.w,fit: BoxFit.cover,)),
SizeBoxWidget(width: 15.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          'The Minimalist',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0XffE86A53),
                          fontFamily: "Satoshi",
                        ),
                        SizeBoxWidget(height: 10.h,),

                        TextWidget(
                          'Brooklyn, New York',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0Xff999999),
                          fontFamily: "RedHatDisplay",
                        ),

                      ],
                    ),
                  ],
                ),
              ),height: 140.h,width: double.infinity,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),),
            SizeBoxWidget(height: 20.h,),

            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1.h,
                    color: Color(0xFFCDCFD1),
                  ),
                ),
                SizeBoxWidget(width: 10.w,),
                TextWidget(
                  'Today',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0XffCCCCCC),
                  fontFamily: "Satoshi",
                ),
                SizeBoxWidget(width: 10.w,),

                Expanded(
                  child: Divider(
                    thickness: 1.h,
                    color: Color(0xFFCDCFD1),
                  ),
                ),

              ],
            ),
SizeBoxWidget(height: 20.w,),
Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [

    Container(
      width: 223.w,
      height: 90.h,
      child:                         Center(
        child: TextWidget(
          'Hi, is the house still available to rent? I want to know the house detail.',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          textAlign: TextAlign.center,
          fontFamily: "Satoshi",

        ),
      ),

      decoration: BoxDecoration(
        color: Color(0xFFE86A53),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.r),bottomRight: Radius.circular(10.r),topLeft: Radius.circular(10.r))
      ),
    ),
    SizeBoxWidget(height: 5.w,),

    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextWidget(
          '13:00 PM',
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Color(0XffCCCCCC),
          fontFamily: "Satoshi",
        ),
        SizeBoxWidget(width: 5.w,),

        ImageWidget("assets/image/solar_check-read-linear.png",height: 18.h,width: 18.w,fit: BoxFit.cover,),

      ],
    ),
  ],
),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width: 223.w,
                  height: 68.h,
                  child:                         Center(
                    child: TextWidget(
                      'Yes, the house is still available to rent,',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE86A53),
                      textAlign: TextAlign.center,
                      fontFamily: "Satoshi",

                    ),
                  ),

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.r),bottomRight: Radius.circular(10.r),topLeft: Radius.circular(10.r))
                  ),
                ),
                SizeBoxWidget(height: 5.w,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(
                      '13:00 PM',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0XffCCCCCC),
                      fontFamily: "Satoshi",
                    ),

                  ],
                ),
              ],
            ),

          ],
        ),
      ),
      bottomNavigationBar:                   Container(
        height: 100.h,
        color: Colors.white,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                    color:  Color(0xFFF8F8F8),

              )
                
                ,
                child: TextFormField(
                  onTap: (){
                    Get.toNamed("/Search");

                  },
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xff999999),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Satoshi",
                  ),
                  decoration: InputDecoration(
                    hintText: 'Write a message ...',
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff999999),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Satoshi",
                    ),
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageWidget(
                          "assets/image/heroicons-outline_paper-clip.png",
                          width: 18.w,
                          height: 18.w,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 44.w,
                          width: 44.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XffE86A53),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageWidget(
                                "assets/image/majesticons_send.png",
                                width: 14.w,
                                height: 14.w,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                  ),
                  onFieldSubmitted: (value) {
                    // Add the search term to the recent searches list
                  },
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
