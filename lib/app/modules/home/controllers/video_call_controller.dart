import 'package:get/get.dart';

class VideoCallController extends GetxController {
  //TODO: Implement VideoCallController
List image=[
  "assets/image/microphone-2.png",
  "assets/image/video_call_image.png",
  "assets/image/flip.png",
      "assets/image/microphone-2.png"
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
