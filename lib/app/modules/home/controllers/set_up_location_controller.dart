import 'package:get/get.dart';

class SetUpLocationController extends GetxController {
  //TODO: Implement SetUpLocationController
  bool isClick=true;
  void changeValueToClick(bool value){
    isClick=value;
    if(isClick==false){
      print(isClick);
      Get.offAndToNamed("/set_up_location_manually");
    }else{
      Get.offAndToNamed("/real_estate_type");
      print(isClick);


    }
    update();
  }

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
