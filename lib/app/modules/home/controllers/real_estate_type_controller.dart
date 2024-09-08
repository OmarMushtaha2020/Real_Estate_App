import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/property.dart';

class RealEstateTypeController extends GetxController {
  //TODO: Implement RealEstateTypeController
List <Property>property=[
  Property(image: "assets/image/FrameOne.png",title: "Villa"),
  Property(image:"assets/image/FrameThree.png",title:"House"),
  Property(image:"assets/image/FrameTwo.png",title:"Workspace"),
  Property(image:"assets/image/FrameFour.png",title: "Appartment"),
  Property(image:"assets/image/FrameOne.png",title:"Villa"),
  Property(image:"assets/image/FrameThree.png",title:"House"),


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
