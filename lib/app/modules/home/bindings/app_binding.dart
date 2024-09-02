import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/login_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/onboarding_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/registration_controller.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
    Get.lazyPut<RegistrationController>(
          () => RegistrationController(),
    );
    Get.lazyPut<LoginController>(
          () => LoginController(),
    );
  }
}
