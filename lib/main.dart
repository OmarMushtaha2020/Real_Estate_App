import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:real_estate_app/app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Enable
      // DevicePreview based on your condition
      builder: (context) {
        var screenSize=MediaQuery.of(context).size;
        print(screenSize.height);
        print(screenSize.width);

        return ScreenUtilInit(
          designSize:  Size(393, 852), // Set your base design size here
          minTextAdapt: true,
          splitScreenMode: true,
          useInheritedMediaQuery: true,
          builder: (context, child) {
            ScreenUtil.configure(
              data: MediaQuery.of(context),
            );
            return  MyApp();

          },
        );
      },
    ),
  );
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
return GetMaterialApp(
debugShowCheckedModeBanner: false,
title: 'Your App Title',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
useMaterial3: true,
),
initialRoute: AppPages.INITIAL,
getPages: AppPages.routes,
locale: DevicePreview.locale(context), // Set locale from DevicePreview
builder: DevicePreview.appBuilder, // Ensure DevicePreview is applied
);
}
}


