import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/notification_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/real_estate_type_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_controller.dart';
import 'package:real_estate_app/app/modules/home/views/book_mark_view.dart';
import 'package:real_estate_app/app/modules/home/views/chat_view.dart';
import 'package:real_estate_app/app/modules/home/views/email_verification_view.dart';
import 'package:real_estate_app/app/modules/home/views/filter_view.dart';
import 'package:real_estate_app/app/modules/home/views/home_view.dart';
import 'package:real_estate_app/app/modules/home/views/layout_view.dart';
import 'package:real_estate_app/app/modules/home/views/login_view.dart';
import 'package:real_estate_app/app/modules/home/views/notification_view.dart';
import 'package:real_estate_app/app/modules/home/views/profile_view.dart';
import 'package:real_estate_app/app/modules/home/views/real_estate_type_view.dart';
import 'package:real_estate_app/app/modules/home/views/role_view.dart';
import 'package:real_estate_app/app/modules/home/views/search_view.dart';
import 'package:real_estate_app/app/modules/home/views/set_up_location_manually_view.dart';
import 'package:real_estate_app/app/modules/home/views/set_up_location_view.dart';
import 'package:real_estate_app/app/modules/home/views/sign_up_view.dart';

import '../modules/home/bindings/app_binding.dart';
import '../modules/home/views/onboarding_view.dart';
import '../modules/home/views/registration_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.Layout;

  static final routes = [
    GetPage(
      name: _Paths.OnBoarding,
      page: () => const OnBoardingView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Registration,
      page: () => RegistrationView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () =>  LoginView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.SignUp,
      page: () =>  SignUpView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.EmailVerification,
      page: () =>  EmailVerificationView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Role,
      page: () =>  RoleView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.SetUpLocation,
      page: () =>  SetUpLocationView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.SetUpLocationManually,
      page: () =>  SetUpLocationManuallyView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.RealEstateType,
      page: () =>  RealEstateTypeView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Notification,
      page: () =>  NotificationView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Filter,
      page: () =>  FilterView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.BookMark,
      page: () =>  BookMarkView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Chat,
      page: () =>  ChatView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Search,
      page: () =>  SearchView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),

    GetPage(
      name: _Paths.Home,
      page: () =>  HomeView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Layout,
      page: () =>  LayoutView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.Profile,
      page: () =>  ProfileView(),
      transition: Transition.downToUp, // Example of another custom transition
      transitionDuration: const Duration(milliseconds: 500),
      binding: AppBinding(),
    )

  ];
}
