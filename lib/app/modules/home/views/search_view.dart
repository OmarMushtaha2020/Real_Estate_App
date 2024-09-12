import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/search_controller.dart';

import '../../../components/common_widget/sizeBox_widget.dart';

class SearchView extends GetView<SearchControllers> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(size: 20.w),
        title: TextWidget(
          'Search',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: const Color(0XffE86A53),
          fontFamily: "RedHatDisplay",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container wrapping the TextFormField with border radius and styling
            Container(
              height: 60.h, // Set the height to 60
              decoration: BoxDecoration(
                color: const Color(0xFFF8F8F8), // Background color
                borderRadius: BorderRadius.circular(100.r), // Border radius
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w), // Padding inside the container
              child: TextFormField(

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
                  prefixIcon:                            Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageWidget("assets/image/majesticons_search-line.png",width: 18.w,height: 18.w,fit: BoxFit.cover,),
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

                          color: Colors.white, // White background for the circular container
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(onTap: (){
                              Get.toNamed("/filter");

                            },child: ImageWidget("assets/image/fliter.png",width: 14.w,height: 14.w,fit: BoxFit.cover,)),
                          ],
                        ), // Search icon
                      ),
                    ],
                  ),
                  border: InputBorder.none, // Removing the border
                  enabledBorder: InputBorder.none, // Removing the enabled border
                  focusedBorder: InputBorder.none, // Removing the focused border
                  contentPadding: EdgeInsets.symmetric(vertical: 15.h), // Centering label and icon vertically
                ),
                onFieldSubmitted: (value) {
                  // Add the search term to the recent searches list
                  controller.addSearchTerm(value);
                },
              ),
            ),
            SizeBoxWidget(height: 24.h),
            TextWidget(
              "Recent Search",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              fontFamily: "Satoshi",
              color: Color(0Xff999999)

            ),
            // Displaying recent searches
            SizeBoxWidget(height: 10.h),

            Obx(
                  () => Expanded(
                child: controller.recentSearches.isEmpty
                    ? Center(
                  child: TextWidget(
                    'No recent searches',
                    fontSize: 16.sp,
                    color: Colors.grey,
                  ),
                )
                    : ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.recentSearches.length,
                  itemBuilder: (context, index) {
                    final searchItem = controller.recentSearches[index];
                    return ListTile(

                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.location_on_rounded , color: Color(0XffE86A53),size: 24.w,),
                      title: TextWidget(
                        searchItem,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0XffE86A53),

                        fontFamily: "Satoshi",
                      ),
                      onTap: () {
                        // Action when tapping on a recent search item
                      },
                    );
                  },

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
