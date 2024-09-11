import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
                    selectedItemColor: Colors.transparent, // Set to transparent to use custom color
                    unselectedItemColor: Colors.transparent, // Set to transparent to use custom color
                    backgroundColor: Colors.grey[200], // Make background transparent to apply custom container
                    onTap: (index) {
                      controller.updateIndex(index);
                    },
                    items: [
                      _buildBottomNavigationBarItem(
                          icon: Icons.add,
                          label: 'Add',
                          isSelected: controller.currentIndex == 0,
                          index: 0
                      ),
                      _buildBottomNavigationBarItem(
                          icon: Icons.mail,
                          label: '',
                          isSelected: controller.currentIndex == 1,
                          index: 1
                      ),
                      _buildBottomNavigationBarItem(
                          icon: Icons.accessibility_rounded,
                          label: 'Access',
                          isSelected: controller.currentIndex == 2,
                          index: 2
                      ),
                      _buildBottomNavigationBarItem(
                          icon: Icons.settings,
                          label: 'Settings',
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
    required IconData icon,
    required String label,
    required bool isSelected,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        height: 68.h,
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.grey[300], // Orange for selected, grey for unselected
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.black, // White for selected, black for unselected
            size: 20.h,
          ),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Icon(
                icon,
                color: Colors.white,
                size: 20.h,
              ),
              Expanded(
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
            ],
          ),
        ),
      ),
    );
  }
}
