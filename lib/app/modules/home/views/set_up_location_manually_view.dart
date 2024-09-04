import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_form_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_manually_controller.dart';
import 'package:sizer/sizer.dart';

class SetUpLocationManuallyView extends StatelessWidget {
  const SetUpLocationManuallyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SetUpLocationManuallyController>(
      init: SetUpLocationManuallyController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageWidget(
                  "assets/image/arrows.png",
                  width: 10.w,
                  height: 10.w,
                  fit: BoxFit.cover,
                ),
                TextWidget(
                  "Set your location",
                  fontFamily: "Satoshi",
                  fontSize: 16.sp,
                  color: const Color(0xFFE86A53),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: TextWidget(
                    "Please set your location manually below.",
                    fontSize: 14.sp,
                    fontFamily: "Satoshi",
                    color: const Color(0xFF999999),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizeBoxWidget(
                  height: 3.h,
                ),                Container(
                  width: double.infinity,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(1.5.h),
                  ),
                ),
                SizeBoxWidget(
                  height: 2.h,
                ),
                TextFormFieldWidget(
                  controller.location,
                  12.h,
                  "location",
                  1.3.h,
                  "Location",
                ),
                          Spacer(),
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
                SizeBoxWidget(
                  height: 3.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
