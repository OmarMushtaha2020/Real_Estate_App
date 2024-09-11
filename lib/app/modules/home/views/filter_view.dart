import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/CustomWrap.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/filter_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';

class FilterView extends GetView<FilterController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(
      init: FilterController(),
      builder: (controllers){
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  'Property Type',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF040404),
                  fontFamily: "Satoshi",
                ),
                SizeBoxWidget(height: 30.h),
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
                SizeBoxWidget(height: 30.h),

                TextWidget(
                  'Price Range:',
                  fontSize: 16.sp, fontWeight: FontWeight.w500,
                  fontFamily: "Satoshi",

                ),
                SizeBoxWidget(height: 30.h),
                Obx(() {
                  return Container(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SfCartesianChart(
                          margin: EdgeInsets.zero,
                          primaryXAxis: NumericAxis(
                            minimum: controllers.min,
                            maximum: controllers.max,
                            majorGridLines: MajorGridLines(width: 0),
                            majorTickLines: MajorTickLines(size: 0),
                            axisLabelFormatter: (AxisLabelRenderDetails details) {
                              return ChartAxisLabel('', TextStyle(color: Colors.transparent));
                            },
                          ),
                          primaryYAxis: NumericAxis(
                            isVisible: false,
                            maximum: 4,
                          ),
                          plotAreaBorderWidth: 0,
                          plotAreaBackgroundColor: Colors.transparent,
                          series: <ColumnSeries<Data, double>>[
                            ColumnSeries<Data, double>(
                              dataSource: controller.chartData,
                              pointColorMapper: (Data data, int index) {
                                return controller.columnColors[index];
                              },
                              xValueMapper: (Data data, int index) => data.x,
                              yValueMapper: (Data data, int index) {
                                double scaledHeight = controller.scaleColumnHeight(data.x);
                                return 3 * scaledHeight; // Apply scaling
                              },
                              width: 0.99,
                            ),
                          ],
                        ),
                        RangeSlider(
                          values: controller.rangeSliderDiscreteValues.value,
                          min: 0,
                          activeColor: Color(0xFFE86A53),
                          inactiveColor: Color(0XFFD9D9D9),

                          max: 100,
                          labels: RangeLabels(
                            controller.rangeSliderDiscreteValues.value.start.round().toString(),
                            controller.rangeSliderDiscreteValues.value.end.round().toString(),
                          ),
                          onChanged: (values) {
                            controller.onRangeSliderChanged(values);
                          },
                        ),
                      ],
                    ),
                  );
                }),
                SizeBoxWidget(height: 30.h),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 37.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(color: Color(0xFFCCCCCC)),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            TextFormField(
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                fontFamily: "Red Hat Display",
                              ),
                              controller: controller.minController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 60.w, bottom: 10.h),
                                isCollapsed: true,
                              ),
                              onChanged: (value) => controller.updateRangeFromTextFields(),
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: TextWidget(
                                      "Min",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      fontFamily: "Red Hat Display",
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 20.w),
                                    child: TextWidget(
                                      "Max",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      fontFamily: "Red Hat Display",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Container(
                        height: 37.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(color: Color(0xFFCCCCCC)),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            TextFormField(
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                fontFamily: "Red Hat Display",
                              ),
                              controller: controller.maxController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 60.w, bottom: 10.h),
                                isCollapsed: true,
                              ),
                              onChanged: (value) => controller.updateRangeFromTextFields(),
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: TextWidget(
                                      "Max",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      fontFamily: "Red Hat Display",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
