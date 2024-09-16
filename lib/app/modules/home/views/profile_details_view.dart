import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_form_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/profile_details_controller.dart';

class ProfileDetailsView extends GetView<ProfileDetailsController> {
  const ProfileDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileDetailsController>(
      init: ProfileDetailsController(),
      builder: (controllers){

        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(size: 20.w),

            title: TextWidget(
              'Profile Detail',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0XffE86A53),
              fontFamily: "RedHatDisplay",
            ),
            centerTitle: true,
          ),

          body:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        Container(
                          width: 64.w,
                          height: 64.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-600nw-1703979295.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizeBoxWidget(width: 15.w,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              'Chris Brown',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0XffE86A53),
                              fontFamily: "Satoshi",
                            ),
                            TextWidget(
                              'brown@dumpmail.com',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0Xff999999),
                              fontFamily: "RedHatDisplay",
                            ),

                          ],
                        ),
                        Spacer(),
                        ImageWidget("assets/image/Icon-4.png",width: 20.w,height: 20.h,fit: BoxFit.contain,),

                      ],

                    ),
                  ),
                  height: 80.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
                SizeBoxWidget(height: 20.h,),
                Container(
                  height: 49.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(controllers.rating.length, (index) {
                      return Expanded(
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              controllers.changeValueOfIndex(index);
                            },
                            child: Container(
                              height: 41.h,
                              width: 172.w,
                              decoration: BoxDecoration(
                                color: controllers.index == index ? Colors.white : Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Center(
                                child: TextWidget(
                                  "${controllers.rating[index]}",
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
                SizeBoxWidget(height: 20.h), // Added for spacing consistency
controllers.index==0? Column(children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextWidget(
        "Email",
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        fontFamily: "Satoshi",

        color: Color(0xFFE86A53),
        textAlign: TextAlign.start,
      ),
      SizeBoxWidget(height: 8.h), // Added for spacing consistency

      TextFormFieldWidget(controllers.name,"brown@dumpmail.com",10.r,"Email Address",10.h,10.w,color: Color(0xFF999999
      ),)
    ],
  ),
  SizeBoxWidget(height: 20.h), // Added for spacing consistency

  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextWidget(
        "Full Name",
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        fontFamily: "Satoshi",
        color: Color(0xFFE86A53),
        textAlign: TextAlign.start,
      ),
      SizeBoxWidget(height: 8.h), // Added for spacing consistency

      TextFormFieldWidget(controller.fullName,"Chris Brown",10.r,"Full Name",10.h,10.w,color: Color(0xFF999999
      ),)
    ],
  ),
  SizeBoxWidget(height: 20.h), // Added for spacing consistency

  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextWidget(
        "Phone Number",
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        fontFamily: "Satoshi",
        color: Color(0xFFE86A53),
        textAlign: TextAlign.start,
      ),
      SizeBoxWidget(height: 8.h), // Added for spacing consistency

      TextFormFieldWidget(controller.phoneNumber,"+62 8123 3456 7890",10.r,"Phone Number",10.h,10.w,color: Color(0xFF999999
      ),)
    ],
  ),
  SizeBoxWidget(height: 20.h), // Added for spacing consistency

  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextWidget(
        "Country",
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        fontFamily: "Satoshi",
        color: Color(0xFFE86A53),
        textAlign: TextAlign.start,
      ),
      SizeBoxWidget(height: 8.h), // Added for spacing consistency
      SizedBox(
        height: 200.h,

        child: CSCPicker(

          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r), // Rounded corners for dropdown
            border: Border.all(color: Color(0XFFCCCCCC), width: 1.w), // Border color and width for dropdown
          ),
          showCities: false,
          showStates: false,
          onCountryChanged: (value) {
            // print('Selected Country: ${value?.name}');
          },
          onStateChanged: (value) {
            // print('Selected State: ${value?.name}');
          },
          onCityChanged: (value) {
            // print('Selected City: ${value?.name}');
          },
        ),
      ),
    ],
  ),
],):Column(children: [
  SizeBoxWidget(height: 17.h),
  TextFormFieldWidget(controller.location, "Location", 10.r, "Location", 10.h, 10.w),
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

],),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: GestureDetector(
                    onTap: () {
                    },
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 53.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border:Border.all (color:Color(0xFFCCCCCC),width: 1.w),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Center(
                          child: TextWidget(
                            "Set New Location",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: "RedHatDisplay",
                            color: Color(0xFFE86A53),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(child: Container()),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: GestureDetector(
                    onTap: () {
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
                            "Save Changes",
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
  String _countryCodeToName(String countryCode) {
    // Simple mapping example; extend this with actual country codes and names
    final Map<String, String> countryNames = {
      'US': 'United States',
      'EG': 'Egypt',
      'FR': 'France',
      // Add more country codes and names as needed
    };

    return countryNames[countryCode] ?? 'Unknown Country';
  }
}
