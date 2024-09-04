import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/role_controller.dart';
import 'package:sizer/sizer.dart';

class RoleView extends GetView<RoleController> {
  const RoleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizeBoxWidget(height: 5.h,),

            ImageWidget(
              "assets/image/smiley.png",
              width: 10.w,
              height: 10.w,
              fit: BoxFit.cover,
            ),
            SizeBoxWidget(
              height: 5.w,
            ),
            TextWidget(
              "What are you looking for?",
              fontFamily: "Satoshi",
              fontSize: 16.sp,
              color: const Color(0xFFE86A53),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: TextWidget(
                "Please select the category below, so we know you better",
                fontSize: 14.sp,
                fontFamily: "Satoshi",
                color: const Color(0xFF999999),
                textAlign: TextAlign.start,
              ),
            ),
            // Wrapping ListView.builder with GetBuilder to listen to changes
            SizeBoxWidget(height: 3.h,),

            GetBuilder<RoleController>(
              builder: (controller) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: controller.options.length,
                  itemBuilder: (context, index) {
                    final isSelected = controller.selectedValue == controller.options[index];
                    return RadioListTile<String>(
contentPadding: EdgeInsets.zero,
                      title: Text(
                        controller.options[index],
                        style: TextStyle(
                          color: isSelected ? const Color(0xFFE86A53) : Color(0XFF040404), // Change text color based on selection
                          fontWeight:  FontWeight.w400,
                          fontSize:  14.sp,
                          fontFamily: "Satoshi",
                        ),
                      ),
                      value: controller.options[index],
                      groupValue: controller.selectedValue,
                      activeColor: const Color(0xFFE86A53), // Color of the selected radio button
                      fillColor: MaterialStateProperty.all(
                        isSelected? Color(0xFFE86A53):Color(0XFF999999),
                      ),
                      onChanged: (String? value) {
                        controller.changeSelectedValue(value!);
                      },
                    );
                  },
                );
              },
            ),
            Spacer(),

            GestureDetector(
              onTap: () {
                Get.toNamed("/role");
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
                    "Next",
                    fontSize: 16.sp,
                    fontFamily: "RedHatDisplay",
                    color: Color(0xFFFFFFFF),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizeBoxWidget(height: 5.h,),

          ],
        ),
      ),
    );
  }
}
