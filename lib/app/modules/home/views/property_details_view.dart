import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/property_details_controller.dart';

class PropertyDetailsView extends GetView<PropertyDetailsController> {
  const PropertyDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width:double.infinity,
            height: 393.h,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/image/imageBuildingOne.png"),fit: BoxFit.cover),
              ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity  ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextWidget(
                        'The Minimalist',
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
                  'Brooklyn, New York',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0Xff999999),
                  fontFamily: "RedHatDisplay",
                ),
                TextWidget(
                  'Contact Person',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0XffE86A53),
                  fontFamily: "Satoshi",
                ),
                Container(
                  height: 26.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 13.w,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageWidget("assets/image/profile-2user.png",width: 12.w,height: 12.w,fit: BoxFit.cover),

                              TextWidget(
                                "${controller.contentsProperty[index].guest} guest",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Satoshi",
                                color:Color(0xFFE86A53),
                              ),

                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                              width: 1.w,
                              color: Color(0xFFCCCCCC)
                            ),
                          ),
                        ),
                        SizeBoxWidget(width: 15.w,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 13.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageWidget("assets/image/ic_twotone-bed.png",width: 12.w,height: 12.w,fit: BoxFit.cover),

                              TextWidget(
                                "${controller.contentsProperty[index].Bedrooms} Bedrooms",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Satoshi",
                                color:Color(0xFFE86A53),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                                width: 1.w,
                                color: Color(0xFFCCCCCC)
                            ),
                          ),
                        ),
                        SizeBoxWidget(width: 15.w,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 13.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageWidget("assets/image/Group.png",width: 12.w,height: 12.w,fit: BoxFit.cover),

                              TextWidget(
                                "${controller.contentsProperty[index].Baths} Baths",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Satoshi",
                                color:Color(0xFFE86A53),
                              ),

                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                                width: 1.w,
                                color: Color(0xFFCCCCCC)
                            ),
                          ),
                        ),

                      ],
                    ),
                    separatorBuilder: (context, index) => SizeBoxWidget(width: 8.w,),
                    itemCount: controller.contentsProperty.length,
                  ),
                ),

                Row(children: [
                  TextWidget(
                    '4.9',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0Xff333333),
                    fontFamily: "Satoshi",
                  ),
                  SizeBoxWidget(width: 5.w,),
                  ImageWidget("assets/image/star.png",width: 10.w,height: 10.w,fit: BoxFit.cover),
                  SizeBoxWidget(width: 5.w,),

                  TextWidget(
                    '(486 Review)',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0Xff333333),
                    fontFamily: "Satoshi",
                  ),

                ],),
                Row(
                  children: [
                    Container(
                      width: 64.h,
                      height: 64.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/image/imageBuildingOne.png"),
                              fit: BoxFit.fitHeight)),
                    ),

                    SizeBoxWidget(                                width: 10.w,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(

                            children: [

                              TextWidget(
                                'Steven Adams',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color:Color(0xFFE86A53) ,
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
                          SizeBoxWidget(width: 20.w,),
                          ImageWidget("assets/image/Vector.png",width: 16.w,height: 16.w,fit: BoxFit.contain,color:Color(0xFF3F82FF)),
                          SizeBoxWidget(width: 5.w,),

                          TextWidget(
                            'VERIFIED',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF3F82FF),
                            fontFamily: "Satoshi",
                          ),

ImageWidget("assets/image/archiveGrey.png",width: 24.w,height: 24.w,fit: BoxFit.cover),
ImageWidget("assets/image/call.png",width: 24.w,height: 24.w,fit: BoxFit.cover),
                        ],


                      ),
                    ),
                  ],
                ),

                TextWidget(
                  'Description',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0XffE86A53),
                  fontFamily: "Satoshi",
                ),
                SizeBoxWidget(height: 10.h,),
                TextWidget(
                  'Located in the vibrant neighborhood of Park Slope, Brooklyn. This exquisite property perfectly blends historic charm with modern luxury, offering an unparalleled living experience in one of New York City\'s most sought-after areas.',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF999999),
                  fontFamily: "Satoshi",
                ),

                GestureDetector(
                      onTap: (){

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
                            "Schedule Appointment",
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


        ],
      ),
    );
  }
}
