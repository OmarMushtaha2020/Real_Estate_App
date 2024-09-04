import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/real_estate_type_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_controller.dart';
import 'package:real_estate_app/app/modules/home/views/email_verification_view.dart';
import 'package:real_estate_app/app/modules/home/views/login_view.dart';
import 'package:real_estate_app/app/modules/home/views/real_estate_type_view.dart';
import 'package:real_estate_app/app/modules/home/views/role_view.dart';
import 'package:real_estate_app/app/modules/home/views/set_up_location_manually_view.dart';
import 'package:real_estate_app/app/modules/home/views/set_up_location_view.dart';
import 'package:real_estate_app/app/modules/home/views/sign_up_view.dart';

import '../modules/home/bindings/app_binding.dart';
import '../modules/home/views/onboarding_view.dart';
import '../modules/home/views/registration_view.dart';

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
      page: () => RegistrationView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () =>  LoginView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.SignUp,
      page: () =>  SignUpView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.EmailVerification,
      page: () =>  EmailVerificationView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Role,
      page: () =>  RoleView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.SetUpLocation,
      page: () =>  SetUpLocationView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.SetUpLocationManually,
      page: () =>  SetUpLocationManuallyView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.RealEstateType,
      page: () =>  RealEstateTypeView(),
      binding: AppBinding(),
    )


  ];
}
