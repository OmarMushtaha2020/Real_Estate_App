import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/property.dart';

class RealEstateTypeController extends GetxController {
  //TODO: Implement RealEstateTypeController
List <Property>property=[
  Property("assets/image/FrameOne.png","Villa"),
  Property("assets/image/FrameThree.png","House"),
  Property("assets/image/FrameTwo.png","Workspace"),
  Property("assets/image/FrameFour.png","Appartment"),
  Property("assets/image/FrameOne.png","Villa"),
  Property("assets/image/FrameThree.png","House"),


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
