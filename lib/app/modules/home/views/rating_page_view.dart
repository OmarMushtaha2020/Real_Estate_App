import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/rating_page_controller.dart';

class RatingPageView extends GetView<RatingPageController> {
  const RatingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RatingPageController>(
      init: RatingPageController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: IconThemeData(size: 20.w),
            title: TextWidget(
              'Ratings',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0XffE86A53),
              fontFamily: "RedHatDisplay",
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizeBoxWidget(height: 20.h),

                TextWidget(
                  'The Minimalist',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0XffE86A53),
                  fontFamily: "Satoshi",
                ),
                TextWidget(
                  'Brooklyn, New York',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0Xff999999),
                  fontFamily: "RedHatDisplay",
                ),
                SizeBoxWidget(height: 20.h),
                Row(
                  children: [
                    Container(
                      child: RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        itemSize: 26.w,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.w),
                        itemBuilder: (context, _) => ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.amber,
                            BlendMode.srcIn,
                          ),
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        onRatingUpdate: (rating) {
                          print('Rating: $rating');
                        },
                      ),
                    ),
                    SizeBoxWidget(width: 10.w),
                    TextWidget(
                      "4.9",
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      fontFamily: "Satoshi",
                      color: Color(0xFFE86A53),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizeBoxWidget(height: 20.h),
                Container(
                  height: 49.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(controller.rating.length, (index) {
                      return Expanded(
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              controller.changeValueOfIndex(index);
                            },
                            child: Container(
                              height: 41.h,
                              width: 115.w,
                              decoration: BoxDecoration(
                                color: controller.index == index ? Colors.white : Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Center(
                                child: TextWidget(
                                  "${controller.rating[index]}",
                                  fontSize: 12.sp,
                                  fontFamily: "Satoshi",
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFE86A53),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizeBoxWidget(height: 30.h),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: RatingBar.builder(
                                    initialRating: 5,
                                    minRating: 1,
                                    itemSize: 14.w,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    ignoreGestures: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.w),
                                    itemBuilder: (context, _) => ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.amber,
                                        BlendMode.srcIn,
                                      ),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                    onRatingUpdate: (rating) {
                                      print('Rating: $rating');
                                    },
                                  ),
                                ),
                                SizeBoxWidget(width: 15.w),
                                TextWidget(
                                  'John Albert  •  4 hours ago',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0Xff999999),
                                  fontFamily: "Satoshi",
                                ),
                              ],
                            ),
                            SizeBoxWidget(height: 15.h),
                            TextWidget(
                              'I recently had the pleasure of touring the townhouse at The Minimalist, Brooklyn, and I was thoroughly impressed. This property truly stands out in the neighborhood for several reasons.',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0Xff040404),
                              fontFamily: "Satoshi",
                            ),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 15.h),
                    itemCount: 1,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 10.h),
                  child: GestureDetector(
                    onTap: () {
                      // Handle add review action
                      Get.toNamed("/add_review");
                    },
                    child: Container(
                      height: 53.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFE86A53),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: TextWidget(
                          "Add Review",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: "RedHatDisplay",
                          color: Color(0xFFFFFFFF),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}