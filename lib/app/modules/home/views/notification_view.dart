import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(size: 20.w),
          title:
          TextWidget(
            'Notification',
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Color(0XffE86A53),
            fontFamily: "RedHatDisplay",
          ),
          centerTitle: true,
        ),
        body:
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
          child: ListView.separated(
            shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context,index)=>Container(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        TextWidget(
                          'Receipt Released',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0XffE86A53),
                          fontFamily: "Satoshi",
                        ),
                        TextWidget(
                          'Your receipt has been released',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0Xff999999),
                          fontFamily: "Satoshi",
                        ),
                        TextWidget(
                          '20/07/2024',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0Xff999999),
                          fontFamily: "Satoshi",
                        ),

                      ],),
                      SizeBoxWidget(width: 13.w,),
                      Container(
                        width: 64.h,
                        child: Image.asset("",width: 24.w,height: 24.w,),
                        height: 64.h,
                        decoration: BoxDecoration(

                          color: Colors.orange,
                          shape: BoxShape.circle
                        ),
                      ),
                    ],
                  ),
                ),
                width: double.infinity,
                height: 80.h,
                decoration: BoxDecoration(
                  color: Color(0XFFF8F8F8),
                  borderRadius: BorderRadius.circular(100.r)
                ),
              ),
              separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
              itemCount: 4),
        ));
  }
}
