import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_form_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/appointment_schedule_controller.dart';

class AppointmentScheduleView extends GetView<AppointmentScheduleController> {
  const AppointmentScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 393.h,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/image/imageBuildingOne.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 40.h),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.offNamed('/property_details');

                              },
                              child: Container(
                                height: 36.w,
                                width: 36.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF).withOpacity(0.50),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  size: 20.w,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 36.w,
                              width: 36.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF).withOpacity(0.50),
                                shape: BoxShape.circle,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageWidget(
                                    "assets/image/VectorOne.png",
                                    height: 4.h,
                                    width: 18.w,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: TextWidget(
                              'The Minimalist',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0XffE86A53),
                              fontFamily: "Satoshi",
                            ),
                          ),
                          TextWidget(
                            'Brooklyn, New York',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0Xff999999),
                            fontFamily: "RedHatDisplay",
                          ),
                          SizeBoxWidget(height: 15.h),
                          Container(
                            height: 26.h,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ImageWidget(
                                          "assets/image/profile-2user.png",
                                          width: 12.w,
                                          height: 12.w,
                                          fit: BoxFit.cover,
                                        ),
                                        SizeBoxWidget(width: 10.w,),
                                        TextWidget(
                                          "${controller.contentsProperty[index].guest} guest",
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Satoshi",
                                          color: Color(0xFFE86A53),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100.r),
                                      border: Border.all(
                                        width: 1.w,
                                        color: Color(0xFFCCCCCC),
                                      ),
                                    ),
                                  ),
                                  SizeBoxWidget(width: 15.w),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ImageWidget(
                                          "assets/image/ic_twotone-bed.png",
                                          width: 12.w,
                                          height: 12.w,
                                          fit: BoxFit.cover,
                                        ),
                                        SizeBoxWidget(width: 10.w,),

                                        TextWidget(
                                          "${controller.contentsProperty[index].Bedrooms} Bedrooms",
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Satoshi",
                                          color: Color(0xFFE86A53),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100.r),
                                      border: Border.all(
                                        width: 1.w,
                                        color: Color(0xFFCCCCCC),
                                      ),
                                    ),
                                  ),
                                  SizeBoxWidget(width: 15.w),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ImageWidget(
                                          "assets/image/Group.png",
                                          width: 12.w,
                                          height: 12.w,
                                          fit: BoxFit.cover,
                                        ),
                                        SizeBoxWidget(width: 10.w,),

                                        TextWidget(
                                          "${controller.contentsProperty[index].Baths} Baths",
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Satoshi",
                                          color: Color(0xFFE86A53),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100.r),
                                      border: Border.all(
                                        width: 1.w,
                                        color: Color(0xFFCCCCCC),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              separatorBuilder: (context, index) => SizeBoxWidget(width: 8.w),
                              itemCount: controller.contentsProperty.length,
                            ),
                          ),

                          SizeBoxWidget(height: 15.h),

                          // Date Range Picker
                          GestureDetector(
                            onTap: () async {
                              final result =
                                  await showCalendarDatePicker2Dialog(
                                context: context,
                                config: CalendarDatePicker2WithActionButtonsConfig(

                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                      dayTextStyle: TextStyle(
                                        fontSize: 12.sp, // Adjust this size for unselected dates
                                        color: Colors.black, // Set the color for unselected dates
                                      ),

                               selectedRangeHighlightColor: Color(0xFFE86A53).withOpacity(0.80),
                                  selectedDayHighlightColor: Color(0xFFE86A53),
cancelButtonTextStyle: TextStyle(
  fontSize: 17.sp,
  color:Color(0xFFE86A53),
),
                                  yearTextStyle:  TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                  okButtonTextStyle:  TextStyle(
                                    fontSize: 17.sp,
                                    color:Color(0xFFE86A53),
                                  ),
                                  selectedRangeDayTextStyle:TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp

                                  ) ,

                                  calendarType: CalendarDatePicker2Type.range,

                                ),
                                dialogSize: Size(MediaQuery.of(context).size.width/1, MediaQuery.of(context).size.height/2),
                                    dialogBackgroundColor: Colors.white


                              );
                              if (result != null && result.length == 2) {
                                controller.startDate.value = result[0];
                                controller.endDate.value = result[1];
                                // Update the TextEditingController with the selected date range
                                controller.dateRangeController.text =
                                    '${DateFormat('yyyy-MM-dd').format(result[0]!)} - ${DateFormat('yyyy-MM-dd').format(result[1]!)}';
                              }
                            },
                            child: Container(
                              height:48.h,
                              child: Column(
                                children: [
                                  Container(
                                    height: 48.h,
                                    child: TextFormField(
                                      controller: controller.dateRangeController,
                                      enabled: false,
                                      style: TextStyle(                                    fontSize: 14.sp
                                      ),

                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Color(0xFFcccccc)),
                                          borderRadius: BorderRadius.circular(10.r),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Color(0xFFcccccc)),
                                          borderRadius: BorderRadius.circular(10
                                              .r), // Optional: adjust the corner radius
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10.r), // Custom border radius
                                        ),
                                        suffixIcon: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,

                                          children: [
                                            ImageWidget(
                                              "assets/image/arrow_right.png",
                                              fit: BoxFit.contain,

                                              height: 24.h,
                                              width: 24.w,
                                            ),
                                          ],
                                        ),
                                        prefixIcon: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,

                                          children: [
                                            ImageWidget(
                                              "assets/image/calendar.png",
                                              height: 24.h,
                                              fit: BoxFit.contain,

                                              width: 24.w,
                                            ),
                                          ],
                                        ),
                                        labelText: 'Select Date',
                                        labelStyle: TextStyle(
                                          fontSize: 14.sp
                                        )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizeBoxWidget(height: 15.h),

                          // DropdownButton for Number of Guests
                          Obx(
                            () => Container(
                              height: 48.h,
                              child: DropdownButtonFormField<int>(
                                iconSize: 0,
                                value: controller.selectedGuest.value,
                                items: List.generate(
                                  10,
                                  (index) => DropdownMenuItem(
                                    value: index + 1,
                                    child: Text("${index + 1} Guests"),
                                  ),
                                ),
                                onChanged: (value) {
                                  controller.selectedGuest.value = value!;
                                },
                                padding: EdgeInsets.zero,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color:Color(0xFF999999),
                                    height: 1

                                ),
                                decoration: InputDecoration(

                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFcccccc)),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFcccccc)),
                                    borderRadius: BorderRadius.circular(10
                                        .r), // Optional: adjust the corner radius
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.r), // Custom border radius
                                  ),
prefixIcon:  Column(
  mainAxisAlignment: MainAxisAlignment.center,

  children: [
    ImageWidget(
                                      "assets/image/profile-2user.png",
                                      height: 24.h,
                                      width: 24.w,
      fit: BoxFit.contain,

    ),
  ],
),
                                  suffixIcon: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ImageWidget(
                                        "assets/image/arrow_right.png",
                                        height: 24.h,
                                        fit: BoxFit.contain,
                                        width: 24.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizeBoxWidget(height: 15.h),

                          // TextFormField for third input
                          TextFormFieldWidget(icon:   Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageWidget(
                                "assets/image/call.png",
                                height: 24.h,fit: BoxFit.contain,
                                width: 24.w,

                              ),

                            ],
                          ),controller.phoneNumber,color: Color(0xFFcccccc),
                              "PhoneNumber", 10.r, "PhoneNumber", 10.h, 10.w),
                          SizeBoxWidget(height: 15.h),

                          TextFormFieldWidget(icon:   Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageWidget(
                                "assets/image/sms.png",
                                height: 24.h,
                                fit: BoxFit.contain,
                                width: 24.w,

                              ),
                            ],
                          ),controller.email, "Your email",
                              10.r, "Your email", 10.h, 10.w,color:  Color(0xFFcccccc),),
                          // TextFormField for fourth input

                          Spacer(),
                          Padding(
                            padding:  EdgeInsets.only(top: 20.h,bottom: 20.h),
                            child: GestureDetector(
                              onTap: () {
                                Get.offNamed('/appointment_success');
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
                                    "Confirm",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: "Satoshi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
