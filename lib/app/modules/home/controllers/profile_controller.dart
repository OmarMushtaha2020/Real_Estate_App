import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  bool isSwitched=false;
  final count = 0.obs;
  changeValueSwitched(bool value){
    isSwitched = value;
update();
  }
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
