import 'package:get/get.dart';

class RatingPageController extends GetxController {
  //TODO: Implement RatingPageController
List rating=[
  'Popular',
  'Latest',
  'Oldest'
];
  final count = 0.obs;
int index=0;
void changeValueOfIndex(value){
  index=value;
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
