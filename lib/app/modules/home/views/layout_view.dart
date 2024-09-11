import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/layout_controller.dart';

class LayoutView extends GetView<LayoutController> {
  const LayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(
      init: LayoutController(),
      builder: (controller) {
        return Scaffold(
          body: controller.screen[controller.currentIndex],
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Container(
              height: 78.h,
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color of the container
                borderRadius: BorderRadius.circular(100.r),

              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Colors.grey[200],
                  ),
                  child: BottomNavigationBar(
                    currentIndex: controller.currentIndex,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    selectedFontSize: 0,
                    selectedItemColor: Colors.white, // Color for selected item icon and label
                    unselectedItemColor: Colors.grey[600], // Color for unselected item icon

                    // Background color of the BottomNavigationBar
                    onTap: (index) {
                      controller.updateIndex(index);
                    },
                    items: [
                      _buildBottomNavigationBarItem(
                          image: controller.currentIndex == 0?"assets/image/ion_compass.png":"assets/image/ion_compass_grey.png",
                          label: 'Explore',
                          isSelected: controller.currentIndex == 0,
                          index: 0
                      ),
                      _buildBottomNavigationBarItem(
                          image: controller.currentIndex == 1?"assets/image/archive_white.png":"assets/image/archive_grey_color.png",
                          label: 'Saved',
                          isSelected: controller.currentIndex == 1,
                          index: 1
                      ),
                      _buildBottomNavigationBarItem(
                          image:  controller.currentIndex == 2?"assets/image/message.png":"assets/image/message_grey.png",
                          label: 'Chat',
                          isSelected: controller.currentIndex == 2,
                          index: 2
                      ),
                      _buildBottomNavigationBarItem(
                          image:controller.currentIndex == 3? "assets/image/profile_orange.png":"assets/image/profile_circle.png",
                          label: 'Profile',
                          isSelected: controller.currentIndex == 3,
                          index: 3
                      ),
                    ],
                    type: BottomNavigationBarType.shifting,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String image,
    required String label,
    required bool isSelected,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        height: 68.h,
        width: 68.h,
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Color(0xFFFFFFFF), // Orange for selected, grey for unselected
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageWidget(image, width: 26.w, height: 26.w, fit: BoxFit.contain),
          ],
        ),
      ),
      label: '', // Empty label to hide default label positioning
      activeIcon: Padding(
        padding: index == 0
            ? EdgeInsets.only(left: 5.w)
            : index == 3
            ? EdgeInsets.only(right: 5.w)
            : EdgeInsets.zero,
        child: Container(
          height: 68.h,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Row(
            children: [
              SizedBox(width: 10.w,),
              ImageWidget(image, width: 26.w, height: 26.w, fit: BoxFit.contain),
              Expanded(
                flex: 3,
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: "Red Hat Display",
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 10.w,),

            ],
          ),
        ),
      ),
    );
  }
}
