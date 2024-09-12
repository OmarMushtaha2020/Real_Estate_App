import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/CustomWrap.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (HomeController controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextWidget(
                        'Explore',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0XffE86A53),
                        fontFamily: "RedHatDisplay",
                      ),
                      Spacer(),

              GestureDetector(
                onTap: (){
                  Get.toNamed("/notification");

                },
                        child: ImageWidget(
                          "assets/image/notification.png",
                          height: 24.w,
                          width: 24.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),

            SizeBoxWidget(height: 30.h,),
                  Container(
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                        hintText: 'Search anything',
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
                              "assets/image/majesticons_search-line.png",
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
                              height: 35.w,
                              width: 35.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageWidget(
                                    "assets/image/fliter.png",
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
                  SizeBoxWidget(height: 30.h,),
                  Container(
                    height: 50.h,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          controller.changeValueOfClick(index);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 5.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                "${controller.propertyType[index].title}",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "RedHatDisplay",
                                color: controller.selectedIndex.value == index
                                    ? Color(0xFFFFFFFF) // White for selected
                                    : Color(0xFFE86A53), // Orange for not selected
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: controller.selectedIndex.value == index
                                ? Color(0xFFE86A53)
                                : Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                              width: 1.w,
                              color: controller.selectedIndex.value == index
                                  ? Color(0xFFE86A53)
                                  : Color(0xFFCCCCCC),
                            ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => SizeBoxWidget(width: 8.w,),
                      itemCount: controller.propertyType.length,
                    ),
                  ),
                  SizeBoxWidget(height: 30.h,),
                  TextWidget(
                    'Featured',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500
                    ,
                    color: Color(0XffE86A53),
                    fontFamily: "Satoshi",
                  ),
                  SizeBoxWidget(height: 30.h,),
                  Container(
                    height: 400.h,

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
        );
      },
    );
  }
}
