import 'package:get/get.dart';

class LayoutController extends GetxController {
  //TODO: Implement LayoutController
  var currentIndex = 0; // Observable variable for index

  // Function to update the selected index
  void updateIndex(int index) {
    currentIndex = index;
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
