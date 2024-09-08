import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/CustomWrap.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/filter_controller.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart' hide LabelPlacement;

class FilterView extends GetView<FilterController> {
  FilterView({Key? key}) : super(key: key);
  SfRangeValues _values = SfRangeValues(4.0, 6.0);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(size: 20.w),
        title: TextWidget(
          'Filter',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: const Color(0XffE86A53),
          fontFamily: "RedHatDisplay",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              'Property Type',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF040404),
              fontFamily: "Satoshi",
            ),
            SizedBox(height: 16.h),
            Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: List.generate(
                controller.propertyType.length,
                    (index) => FilterChipWidget(
                  label: '${controller.propertyType[index].title}',
                  selected: controller.propertyType[index].selected,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

