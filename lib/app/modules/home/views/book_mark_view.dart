import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/book_mark_controller.dart';

class BookMarkView extends GetView<BookMarkController> {
  const BookMarkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
          TextWidget(
            'Bookmark',
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Color(0XffE86A53),
            fontFamily: "RedHatDisplay",
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: ListView.separated(
              itemBuilder: (context, index) =>
                  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.offNamed('/property_details');
                    },
                    child: Container(
                          width: 353.w,
                          height: 353.w,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "${controller.buliding[index].image}"),fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r)),
                        ),
                  ),
                  SizeBoxWidget(height: 20.h,),
                  Row(
                    children: [
                      TextWidget(
                        '${controller.buliding[index].title}',
                        fontSize: 16.sp,

                        fontWeight: FontWeight.w500,
                        color: Color(0XffE86A53),
                        fontFamily: "Satoshi",
                      ),
Spacer(),
        ImageWidget("assets/image/archive-minus.png",width: 26.w,height: 26.h,fit: BoxFit.contain,)  ,
                    ],
                  ),
                  TextWidget(
                    '${controller.buliding[index].locationProperty}',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0Xff999999),
                    fontFamily: "RedHatDisplay",
                  ),

                ],
              ),
              separatorBuilder: (context, index) => SizeBoxWidget(
                    height: 10.h,
                  ),
              itemCount: controller.buliding.length),
        )
    );
  }
}
