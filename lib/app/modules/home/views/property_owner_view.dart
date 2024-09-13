import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/property_owner_controller.dart';

class PropertyOwnerView extends GetView<PropertyOwnerController> {
  const PropertyOwnerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return                     Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 681.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(topRight: Radius.circular(25.r),topLeft: Radius.circular(25.r))
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
                  child: SingleChildScrollView(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 60.w,
                            child: Divider(
                              thickness: 3.h,
                              color: Color(0xFFCDCFD1),
                            ),
                          ),
                        ),
                        SizeBoxWidget(height: 30.h,)
                    ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                TextWidget(
                                  'Steven Adams',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFE86A53),
                                  fontFamily: "Satoshi",
                                ),
                                TextWidget(
                                  'Property Owner',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XffCCCCCC),
                                  fontFamily: "Satoshi",
                                ),
                              ],
                            ),
                            SizeBoxWidget(width: 20.w),
                            ImageWidget(
                              "assets/image/Vector.png",
                              width: 16.w,
                              height: 16.w,
                              fit: BoxFit.contain,
                              color: Color(0xFF3F82FF),
                            ),
                            SizeBoxWidget(width: 5.w),
                            TextWidget(
                              'VERIFIED',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3F82FF),
                              fontFamily: "Satoshi",
                            ),
                            Spacer(),
                            Padding(
                              padding:  EdgeInsets.only(top: 12.h,right: 10.w),
                              child: ImageWidget(
                                "assets/image/archiveGrey.png",
                                width: 24.w,
                                height: 24.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: 12.h),
                              child: ImageWidget(
                                "assets/image/call.png",
                                width: 24.w,
                                height: 24.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        SizeBoxWidget(height: 30.h,),

                        TextWidget(
                          'About',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0XffE86A53),
                          fontFamily: "Satoshi",
                        ),

                        SizeBoxWidget(height: 10.h),
                        TextWidget(
                          'Located in the vibrant neighborhood of Park Slope, Brooklyn. This exquisite property perfectly blends historic charm with modern luxury, offering an unparalleled living experience in one of New York City\'s most sought-after areas.',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF999999),
                          fontFamily: "Satoshi",
                        ),
                        SizeBoxWidget(height: 10.h),

                        TextWidget(
                          'Listed Property',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400
                          ,
                          color: Color(0XffE86A53),
                          fontFamily: "Satoshi",
                        ),
                        SizeBoxWidget(height: 30.h,),
                        Container(
                          height: 373.h,

                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:280.w,
                                        height: 280.h,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "${controller.buliding[index].image}"),fit: BoxFit.cover),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10.r)),
                                      ),
                                      SizeBoxWidget(height: 20.h,),
                                      Container(
                                        width: 280.w,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextWidget(
                                              '${controller.buliding[index].title}',
                                              fontSize: 16.sp,

                                              fontWeight: FontWeight.w500,
                                              color: Color(0XffE86A53),
                                              fontFamily: "Satoshi",
                                            ),
                                            Spacer(),
                                            ImageWidget("assets/image/archiveGrey.png",width: 26.w,height: 26.h,fit: BoxFit.contain,)  ,
                                          ],
                                        ),
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
                                width: 20.w,
                              ),
                              itemCount: controller.buliding.length),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/imageBuildingOne.png"),
              fit: BoxFit.cover,

            ),
          ),
        ),
Padding(
  padding:  EdgeInsets.only(top: 90.h),
  child: ImageWidget("assets/image/error.png",height: 28.w,width: 28.w,fit: BoxFit.cover,),
),
      ],
    );

  }
}
