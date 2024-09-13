import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/photos_details_controller.dart';

class PhotosDetailsView extends GetView<PhotosDetailsController> {
  const PhotosDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PhotosDetailsController>(
      init: PhotosDetailsController(),
      builder: (controller){
        return   Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(size: 20.w),
            title: TextWidget(
              'Photos',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0XffE86A53),
              fontFamily: "RedHatDisplay",
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                              "${controller.contentsProperty[index].title}",
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
                    itemCount: controller.contentsProperty.length,
                  ),
                ),
                SizeBoxWidget(height: 30.h,),
                ListView.separated(
                  shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) =>
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 353.w,
                              height: 160.h,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "${controller.buliding[index].image}"),fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),


                          ],
                        ),
                    separatorBuilder: (context, index) => SizeBoxWidget(
                      height: 20.h,
                    ),
                    itemCount: controller.buliding.length),

              ],
            ),
          ),

        );
      },
    );
  }
}
