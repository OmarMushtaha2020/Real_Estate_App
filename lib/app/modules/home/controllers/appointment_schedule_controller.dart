import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/data_model/contents_property_model.dart';
import 'package:flutter/material.dart'; // Import this to use TextEditingController

class AppointmentScheduleController extends GetxController {
  // Selected date range start and end dates
  Rx<DateTime?> startDate = Rx<DateTime?>(null);
  Rx<DateTime?> endDate = Rx<DateTime?>(null);

  // Selected number of guests
  RxInt selectedGuest = 1.obs;

  // List of contents property
  List<ContentsProperty> contentsProperty = [
    ContentsProperty(guest: 1, Baths: 1, Bedrooms: 1),
  ];

  // TextEditingController for date range
  final dateRangeController = TextEditingController();
var phoneNumber=TextEditingController();
  var email=TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    dateRangeController.dispose(); // Dispose of the controller when done
    super.onClose();
  }

  // Method to update the date range
  void updateDateRange(DateTime? start, DateTime? end) {
    startDate.value = start;
    endDate.value = end;
    if (start != null && end != null) {
      dateRangeController.text =
      '${DateFormat('yyyy-MM-dd').format(start)} - ${DateFormat('yyyy-MM-dd').format(end)}';
    } else {
      dateRangeController.text = 'Tap to select date range';
    }
  }
}
