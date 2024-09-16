import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SetNewLocationController extends GetxController {
  //TODO: Implement SetNewLocationController

  var location=TextEditingController();
  final count = 0.obs;
  final Set<Marker> markers = {}; // Add this line

  @override
  void onInit() {

    super.onInit();
    markers.add(
      Marker(
        markerId: MarkerId('initial_marker'),
        position: LatLng(29.952654, 29.952654), // Same as the camera's initial position
        infoWindow: InfoWindow(title: 'Initial Position'),
      ),
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
