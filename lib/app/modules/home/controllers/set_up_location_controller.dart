import 'package:get/get.dart';

class SetUpLocationController extends GetxController {
  //TODO: Implement SetUpLocationController
  bool isClick=true;
  void changeValueToClick(){
    isClick=!isClick;
    if(isClick==false){
      Get.offAndToNamed("/set_up_location_manually");
    }else{
      Get.offAndToNamed("/set_up_location_manually");


    }
    print(isClick);
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
