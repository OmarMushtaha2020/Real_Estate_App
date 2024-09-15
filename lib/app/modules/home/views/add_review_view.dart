import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';  // Import the rating bar package
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_form_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/add_review_controller.dart';

class AddReviewView extends GetView<AddReviewController> {
  const AddReviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(size: 20.w),
        title: TextWidget(
          'Add Review',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: const Color(0XffE86A53),
          fontFamily: "RedHatDisplay",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizeBoxWidget(height: 30.h),

            Container(
              width: double.infinity,

              child: Center(
                child: RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  itemSize: 26.w,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.w),
                  itemBuilder: (context, _) => ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.amber,
                      BlendMode.srcIn, // Adjust blend mode as needed

                    ),
                    child: Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  onRatingUpdate: (rating) {
                    // Handle the rating value here
                    print('Rating: $rating');
                    // You can also update the controller with the rating value
                    controller.rating.value = rating;
                  },
                ),
              ),
            ),
            SizeBoxWidget(height: 20.h),
            Container(
              width: double.infinity,
              height: 140.h,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0XffF8F8F8)
              ),
              child: TextFormField(
                cursorColor:  Color(0XFF999999),
style: TextStyle(
  fontSize: 14.sp,
  color: Color(0XFF999999)
),
                decoration: InputDecoration(

                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                  hintText: 'Tell us more...',
                  hintStyle:  TextStyle(
                      fontSize: 14.sp,
                      color: Color(0XFF999999)
                  ),
                ),
                maxLines: 5,
              ),
            ),
            SizeBoxWidget(height: 20.h),
            Container(
              width: double.infinity,
              height: 140.h,
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ImageWidget("assets/image/message-add.png",width: 24.w,height: 24.w,fit: BoxFit.cover,),

    TextWidget(
      'Add Image',
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0Xff999999),
      fontFamily: "RedHatDisplay",
    ),
  ],
),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                border: Border.all(color: Color(0XFFCCCCCC),width: 1.w)
              ),
            ),

Spacer(),
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
                    "Submit",
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
    );
  }
}
