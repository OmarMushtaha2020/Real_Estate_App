import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/property.dart';
import 'package:real_estate_app/app/modules/home/views/filter_view.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterController extends GetxController {
  final double min = 1000.0;
  final double max = 10000.0;
  Rx<SfRangeValues> initialValues = SfRangeValues(4500.0, 8500.0).obs;
  Rx<RangeValues> rangeSliderDiscreteValues = RangeValues(40, 80).obs;

  List<Data> chartData = <Data>[
    Data(x: 1000.0, y: 2.2),
    Data(x: 2000.0, y: 3.4),
    Data(x: 3000.0, y: 2.8),
    Data(x: 4000.0, y: 1.6),
    Data(x: 5000.0, y: 2.3),
    Data(x: 6000.0, y: 2.5),
    Data(x: 7000.0, y: 2.9),
    Data(x: 8000.0, y: 3.8),
    Data(x: 9000.0, y: 3.7),
    Data(x: 10000.0, y: 3.9),
  ];

  List<Color> columnColors = [];
  final TextEditingController minController = TextEditingController();
  final TextEditingController maxController = TextEditingController();

  final List<Property> propertyType = [
    Property(selected: false, title: "All"),
    Property(selected: false, title: "House"),
    Property(selected: false, title: "Apartment"),
    Property(selected: false, title: "Workspace"),
    Property(selected: false, title: "Commercial"),
    Property(selected: false, title: "Villa"),
    Property(selected: false, title: "Cabin"),
    Property(selected: false, title: "Cluster"),
  ];

  @override
  void onInit() {
    super.onInit();
    updateColumnColors(initialValues.value);
    minController.text = initialValues.value.start.toStringAsFixed(0);
    maxController.text = initialValues.value.end.toStringAsFixed(0);
  }

  void updateColumnColors(SfRangeValues values) {
    columnColors = chartData.map((data) {
      if (data.x >= values.start && data.x <= values.end) {
        return Colors.blue; // Color for selected range
      } else {
        return Colors.grey.withOpacity(0.5); // Faded color for non-selected range
      }
    }).toList();
    update(); // Notify listeners
  }

  void updateRangeFromTextFields() {
    double minValue = double.tryParse(minController.text) ?? min;
    double maxValue = double.tryParse(maxController.text) ?? max;

    // Ensure minValue and maxValue are within valid range
    minValue = minValue < min ? min : minValue;
    maxValue = maxValue > max ? max : maxValue;

    // Ensure minValue is less than or equal to maxValue
    if (minValue > maxValue) {
      maxValue = minValue; // Adjust maxValue to be at least minValue
    }

    initialValues.value = SfRangeValues(minValue, maxValue);
    rangeSliderDiscreteValues.value = RangeValues(
      (minValue - min) / (max - min) * 100,
      (maxValue - min) / (max - min) * 100,
    );
    updateColumnColors(initialValues.value);
  }

  void onRangeSliderChanged(RangeValues values) {
    double start = min + (values.start / 100) * (max - min);
    double end = min + (values.end / 100) * (max - min);
    if (start > end) {
      end = start; // Adjust end to be at least start
    }
    rangeSliderDiscreteValues.value = RangeValues(
      (start - min) / (max - min) * 100,
      (end - min) / (max - min) * 100,
    );
    initialValues.value = SfRangeValues(start, end);
    minController.text = start.toStringAsFixed(0);
    maxController.text = end.toStringAsFixed(0);
    updateColumnColors(initialValues.value);
  }

  double scaleColumnHeight(double x) {
    final double center = (min + max) / 2;
    final double range = max - min;
    final double scaledValue = 1 - ((x - center).abs() / (range / 2)).clamp(0.0, 1.0);

    return scaledValue * 0.5 + 0.5;
  }
}
class Data {
  Data({required this.x, required this.y});
  final double x;
  final double y;
}
