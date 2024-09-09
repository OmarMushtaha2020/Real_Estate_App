import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilterView(),
    );
  }
}

class FilterView extends StatefulWidget {
  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  final double _min = 2.0;
  final double _max = 10.0;
  SfRangeValues _initialValues = SfRangeValues(4.5, 8.5);

  final List<Data> _chartData = <Data>[
    Data(x: 2.0, y: 2.2),
    Data(x: 3.0, y: 3.4),
    Data(x: 4.0, y: 2.8),
    Data(x: 5.0, y: 1.6),
    Data(x: 6.0, y: 2.3),
    Data(x: 7.0, y: 2.5),
    Data(x: 8.0, y: 2.9),
    Data(x: 9.0, y: 3.8),
    Data(x: 10.0, y: 3.7),
  ];

  List<Data> _filteredData = [];
  List<Color> _columnColors = [];
  SfRangeValues _currentValues = SfRangeValues(4.5, 8.5);

  @override
  void initState() {
    super.initState();
    _updateFilteredData(_initialValues);
  }

  void _updateFilteredData(SfRangeValues values) {
    setState(() {
      _currentValues = values;
      _filteredData = _chartData
          .where((data) =>
      data.x >= values.start && data.x <= values.end)
          .toList();

      _columnColors = _chartData.map((data) {
        if (data.x >= values.start && data.x <= values.end) {
          return Colors.blue; // Color for selected range
        } else {
          return Colors.grey; // Color for non-selected range
        }
      }).toList();
    });
  }

  // Function to scale the column height
  double _scaleColumnHeight(double x) {
    final double center = (_min + _max) / 2;
    final double range = _max - _min;
    final double scaledValue = 1 - ((x - center).abs() / (range / 2)).clamp(0.0, 1.0);

    return scaledValue * 0.5 + 0.5; // Adjust scaling range
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Range:',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16.h),
            Container(
              height: 250,
              child: SfRangeSelector(
                min: _min,
                max: _max,
                initialValues: _initialValues,
                // interval: 1,
                showLabels: false,
                showTicks: false,
                numberFormat: NumberFormat("\$"),
                onChanged: (SfRangeValues values) {
                  _updateFilteredData(values);
                },
                activeColor: Colors.blue.withOpacity(1),
                inactiveColor: Colors.transparent,
                tooltipTextFormatterCallback: (dynamic value, String format) {
                  return NumberFormat("\$").format(value);
                },
                child: SfCartesianChart(
                  margin: EdgeInsets.zero,
                  primaryXAxis: NumericAxis(
                    minimum: _min,
                    maximum: _max,
                    axisLabelFormatter: (AxisLabelRenderDetails details) {
                      // Custom label formatter
                      if ([2.0, 4.0, 6.0, 8.0, 10.0].contains(details.value)) {
                        return ChartAxisLabel('', TextStyle(color: Colors.transparent));
                      }
                      return ChartAxisLabel(details.text, details.textStyle);
                    },
                  ),
                  primaryYAxis: NumericAxis(isVisible: false, maximum:4,),
                  plotAreaBorderWidth: 0,
                  plotAreaBackgroundColor: Colors.transparent,
                  series: <ColumnSeries<Data, double>>[
                    ColumnSeries<Data, double>(
                      dataSource: _chartData,
                      color: Colors.blue, // Default color (not used here)
                      pointColorMapper: (Data data, int index) {
                        return _columnColors[index];
                      },
                      xValueMapper: (Data data, int index) => data.x,
                      yValueMapper: (Data data, int index) {
                        double scaledHeight = _scaleColumnHeight(data.x);
                        return 3* scaledHeight; // Apply scaling
                      },
                      width: 0.9, // Column width remains constant
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  Data({required this.x, required this.y});
  final double x;
  final double y;
}
