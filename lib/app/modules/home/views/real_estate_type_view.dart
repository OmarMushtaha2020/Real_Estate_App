import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/real_estate_type_controller.dart';

class RealEstateTypeView extends GetView<RealEstateTypeController> {
  const RealEstateTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        iconTheme: IconThemeData(
          size: 20.w

        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeBoxWidget(height: 20.h,),
            ImageWidget(
              "assets/image/hand_drawn.png",
              width: 38.w,
              height: 38.w,
              fit: BoxFit.cover,
            ),
            SizeBoxWidget(height: 20.h,),
            TextWidget(
              "Choose real estate type",
              fontFamily: "Satoshi",
              fontWeight: FontWeight.w700,

              fontSize: 16.sp,
              color: const Color(0xFFE86A53),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: TextWidget(
                "Select your preferable real estate type below",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "Satoshi",
                color: const Color(0xFF999999),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 20.h), // Add spacing between text and GridView
            Expanded(

              child: Padding(
                padding:  EdgeInsets.only(bottom: 20.h),
                child: GridView.builder(

                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2.w, // Horizontal space between grid items
                    mainAxisSpacing: 10.h, // Vertical space between grid items
                  ),

                  itemCount: controller.property.length, // Number of items in the grid
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset("${controller.property[index].image}",fit: BoxFit.cover,),
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h), // Space between image and text
                        TextWidget(
                          "${controller.property[index].title}",
                          fontFamily: "Satoshi",
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: const Color(0xFFE86A53),
                        ),

                      ],
                    );
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed("/real_estate_type");
              },
              child: Padding(
                padding:  EdgeInsets.only(bottom: 15.h),
                child: Container(
                  height: 53.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFE86A53),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Center(
                    child: TextWidget(
                      "Confirm",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
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
  }
}
