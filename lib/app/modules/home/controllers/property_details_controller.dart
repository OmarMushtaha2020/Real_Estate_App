import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/contents_property_model.dart';

class PropertyDetailsController extends GetxController {
  //TODO: Implement PropertyDetailsController
  final count = 0.obs;
  List<ContentsProperty>contentsProperty=[
    ContentsProperty(guest:1,Baths:1,Bedrooms:1),
  ];
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
