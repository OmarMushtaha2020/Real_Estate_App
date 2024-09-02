import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/bindings/app_binding.dart';
import 'package:real_estate_app/app/modules/home/views/onboarding_view.dart';
import 'package:real_estate_app/app/modules/home/views/registration_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.OnBoarding;

  static final routes = [
    GetPage(
      name: _Paths.OnBoarding,
      page: () => const OnBoardingView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Registration,
      page: () =>  RegistrationView(),
      binding: AppBinding(),
    ),
  ];
}
