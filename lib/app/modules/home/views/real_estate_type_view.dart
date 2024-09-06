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
        title: Text('Real Estate Types'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageWidget(
              "assets/image/hand_drawn.png",
              width: 10.w,
              height: 10.w,
              fit: BoxFit.cover,
            ),
            TextWidget(
              "Choose real estate type",
              fontFamily: "Satoshi",
              fontSize: 16.sp,
              color: const Color(0xFFE86A53),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: TextWidget(
                "Select your preferable real estate type below",
                fontSize: 14.sp,
                fontFamily: "Satoshi",
                color: const Color(0xFF999999),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 2.h), // Add spacing between text and GridView
            Expanded(

              child: Padding(
                padding:  EdgeInsets.only(bottom: 4.h),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1.w, // Horizontal space between grid items
                    mainAxisSpacing: 1.h, // Vertical space between grid items
                  ),
                  itemCount: 10, // Number of items in the grid
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.network("https://t4.ftcdn.net/jpg/00/72/18/03/360_F_72180347_NTfdClV3UZL2xTRnMTGogY5z2vHyp722.jpg",fit: BoxFit.cover,),
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(1.h),
                               color: Colors.orange
                              ),
                            ),
                          ),
                          SizedBox(height: 0.5.h), // Space between image and text
                          TextWidget(
                            "Houes",
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color(0xFFE86A53),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed("/real_estate_type");
              },
              child: Container(
                height: 7.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFE86A53),
                  borderRadius: BorderRadius.circular(10.h),
                ),
                child: Center(
                  child: TextWidget(
                    "Confirm",
                    fontSize: 16.sp,
                    fontFamily: "RedHatDisplay",
                    color: Color(0xFFFFFFFF),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
SizeBoxWidget(height: 2.h,),
          ],
        ),
      ),
    );
  }
}
