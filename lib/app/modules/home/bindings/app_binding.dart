import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/onboarding_controller.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
  }
}
