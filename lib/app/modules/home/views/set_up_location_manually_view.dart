import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_form_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_manually_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetUpLocationManuallyView extends GetView<SetUpLocationManuallyController> {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<SetUpLocationManuallyController>(
      init: SetUpLocationManuallyController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              size: 20.w,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizeBoxWidget(height: 30.h),
                ImageWidget(
                  "assets/image/arrows.png",
                  width: 38.w,
                  height: 38.w,
                  fit: BoxFit.cover,
                ),
                SizeBoxWidget(height: 20.h),
                TextWidget(
                  "Set your location",
                  fontWeight: FontWeight.w700,
                  fontFamily: "Satoshi",
                  fontSize: 16.sp,
                  color: const Color(0xFFE86A53),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: TextWidget(
                    "Please set your location manually below.",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Satoshi",
                    color: const Color(0xFF999999),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizeBoxWidget(height: 30.h),
                Container(
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  height: 280.h,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      zoom: 10,
                      target: LatLng(29.952654, 29.952654), // Set the initial position
                    ),
                    markers: controller.markers, // Pass the markers set
                    onMapCreated: (GoogleMapController controller) {
                      // You can store the controller for later use if needed
                    },
                  ),
                ),
                SizeBoxWidget(height: 17.h),
                TextFormFieldWidget(controller.location, "Location", 10.r, "Location", 10.h, 10.w),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/real_estate_type');
                    },
                    child: Align(
                      alignment: Alignment.bottomCenter,
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
