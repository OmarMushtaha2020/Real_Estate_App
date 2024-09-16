import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_new_location_controller.dart';

class SetNewLocationView extends GetView<SetNewLocationController> {
  const SetNewLocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
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
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                              "assets/image/location.png",
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
Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/profile_details");
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

                ],),
            )
          ],
        ),
      );
  }
}
