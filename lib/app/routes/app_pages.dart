import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/bindings/app_binding.dart';

import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: AppBinding(),
    ),
  ];
}
