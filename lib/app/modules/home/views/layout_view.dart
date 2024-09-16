import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/layout_controller.dart';

class LayoutView extends GetView<LayoutController> {
  @override
  Widget build(BuildContext context) {
    // Initialize LayoutController once and retrieve it using Get.find()

    return GetBuilder<LayoutController>(
      init: LayoutController(),
      builder: (controller) {
        return Scaffold(

          body: controller.screen[controller.index], // Listen to changes reactively
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Container(
              height: 76.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Row(
                children: _buildBottomNavItems(controller), // Direct call to the widget builder method
              ),
            ),
          ),
        );
      },
    );
  }

  // Method to build bottom navigation items
  List<Widget> _buildBottomNavItems(LayoutController controller) {
    return List.generate(controller.screen.length, (index) {
      // Check if the current item is the selected one
      if (controller.index == index) {
        // Use Expanded for the selected item to take all available space
        return Expanded(
          child: _buildBottomNavItem(
            controller.getIconPath(index), // Use the getIconPath method
            controller,
            index,
            label: controller.labels[index], // Add label for the selected item
            isExpanded: true,
          ),
        );
      } else {
        // Fixed size for non-selected items
        return _buildBottomNavItem(
          controller.getIconPath(index), // Use the getIconPath method
          controller,
          index,
        );
      }
    });
  }

  // Method to build individual bottom navigation item
  Widget _buildBottomNavItem(
      String imagePath, // Use String for image path
      LayoutController controller,
      int index, {
        bool isExpanded = false,
        String label = '', // Optional label parameter
      }) {
    return GestureDetector(
      onTap: () {
        // Set the selected item index and toggle the state
        controller.setSelectedItem(index);
      },
      child: Container(
        height: 68.h,
        width: isExpanded ? double.infinity : 68.h, // Expand width if selected
        decoration: BoxDecoration(
          color: controller.index == index
              ? const Color(0xFFE86A53)
              : const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Image.asset(
                imagePath, // Use image path instead of icon
                key: ValueKey<String>(imagePath), // Unique key to trigger animation
                width: 30.sp, // Adjust size if needed
                height: 30.sp, // Adjust size if needed
                fit:  BoxFit.contain,
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
            ),
            // Show the label only if the item is expanded (selected)
            if (isExpanded)
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: TextWidget(
                  label,
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Red Hat Display",
                ),
              ),
          ],
        ),
      ),
    );
  }
}
