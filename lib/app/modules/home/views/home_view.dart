import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:
     Padding(
       padding:  EdgeInsets.symmetric(horizontal:16.w,vertical: 8.h),
       child: Column(children: [
         Row(
           children: [
             TextWidget(
             'Explore',
             fontSize: 24.sp,
             fontWeight: FontWeight.w700,
             color: Color(0XffE86A53),
             fontFamily: "RedHatDisplay",
                  ),
           ],
         ),

       ],),
     )
    );
  }
}
