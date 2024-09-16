import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ProfileDetailsController extends GetxController {
  List rating=[
    'General',
    'Locations',
  ];
  TextEditingController name=TextEditingController();
  TextEditingController fullName=TextEditingController();
  TextEditingController phoneNumber=TextEditingController();

  int index=0;
  void changeValueOfIndex(value){
    index=value;
    print(index);
    update();
  }
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
