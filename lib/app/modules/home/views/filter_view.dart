import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  final double _min = 1000.0;
  final double _max = 10000.0;
  SfRangeValues _initialValues = SfRangeValues(4500.0, 8500.0);
  RangeValues _rangeSliderDiscreteValues = const RangeValues(40, 80);

  final List<Data> _chartData = <Data>[
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

  List<Color> _columnColors = [];
  final TextEditingController _minController = TextEditingController();
  final TextEditingController _maxController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _updateColumnColors(_initialValues);
    _minController.text = _initialValues.start.toStringAsFixed(0);
    _maxController.text = _initialValues.end.toStringAsFixed(0);
  }

  void _updateColumnColors(SfRangeValues values) {
    setState(() {
      _columnColors = _chartData.map((data) {
        if (data.x >= values.start && data.x <= values.end) {
          return Colors.blue; // Color for selected range
        } else {
          return Colors.grey.withOpacity(0.5); // Faded color for non-selected range
        }
      }).toList();
    });
  }

  void _updateRangeFromTextFields() {
    double minValue = double.tryParse(_minController.text) ?? _min;
    double maxValue = double.tryParse(_maxController.text) ?? _max;

    // Ensure minValue and maxValue are within valid range
    minValue = minValue < _min ? _min : minValue;
    maxValue = maxValue > _max ? _max : maxValue;

    // Ensure minValue is less than or equal to maxValue
    if (minValue > maxValue) {
      maxValue = minValue; // Adjust maxValue to be at least minValue
    }

    setState(() {
      _initialValues = SfRangeValues(minValue, maxValue);
      _rangeSliderDiscreteValues = RangeValues(
        (minValue - _min) / (_max - _min) * 100,
        (maxValue - _min) / (_max - _min) * 100,
      );
      _updateColumnColors(_initialValues);
    });
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
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _minController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Lowest Price',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => _updateRangeFromTextFields(),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: TextFormField(
                    controller: _maxController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Highest Price',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => _updateRangeFromTextFields(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Container(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  SfCartesianChart(
                    margin: EdgeInsets.zero,
                    primaryXAxis: NumericAxis(
                      minimum: _min,
                      maximum: _max,
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
                        dataSource: _chartData,
                        pointColorMapper: (Data data, int index) {
                          return _columnColors[index];
                        },
                        xValueMapper: (Data data, int index) => data.x,
                        yValueMapper: (Data data, int index) {
                          double scaledHeight = _scaleColumnHeight(data.x);
                          return 3 * scaledHeight; // Apply scaling
                        },
                        width: 0.99,
                      ),
                    ],
                  ),
                  RangeSlider(
                    values: _rangeSliderDiscreteValues,
                    min: 0,
                    activeColor: Colors.blue,
                    inactiveColor: Colors.transparent,
                    max: 100,
                    divisions: 5,
                    labels: RangeLabels(
                      _rangeSliderDiscreteValues.start.round().toString(),
                      _rangeSliderDiscreteValues.end.round().toString(),
                    ),
                    onChanged: (values) {
                      setState(() {
                        double start = _min + (values.start / 100) * (_max - _min);
                        double end = _min + (values.end / 100) * (_max - _min);
                        if (start > end) {
                          end = start; // Adjust end to be at least start
                        }
                        _rangeSliderDiscreteValues = RangeValues(
                          (start - _min) / (_max - _min) * 100,
                          (end - _min) / (_max - _min) * 100,
                        );
                        _initialValues = SfRangeValues(start, end);
                        _minController.text = start.toStringAsFixed(0);
                        _maxController.text = end.toStringAsFixed(0);
                        _updateColumnColors(SfRangeValues(start, end));
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _scaleColumnHeight(double x) {
    final double center = (_min + _max) / 2;
    final double range = _max - _min;
    final double scaledValue = 1 - ((x - center).abs() / (range / 2)).clamp(0.0, 1.0);

    return scaledValue * 0.5 + 0.5;
  }
}

class Data {
  Data({required this.x, required this.y});
  final double x;
  final double y;
}
