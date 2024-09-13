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
    return                     Container(
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


                ],
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
    );

  }
}
