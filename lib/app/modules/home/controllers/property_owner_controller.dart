import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/property.dart';

class PropertyOwnerController extends GetxController {
  //TODO: Implement PropertyOwnerController
  List<Property>buliding=[
    Property(image:"assets/image/imageBuildingOne.png" ,title: "The Minimalist",locationProperty: "Brooklyn, New York"),

    Property(image:"assets/image/imageBuildingTwo.png" ,title: "Retro House",locationProperty: "Canarsie, New York"),
  ];
  final count = 0.obs;
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
    super.onClose();
  }

  void increment() => count.value++;
}
