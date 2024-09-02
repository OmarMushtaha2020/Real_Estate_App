import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';
import 'package:real_estate_app/app/routes/app_pages.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(), // Wrap your app with DevicePreview
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          locale: DevicePreview.locale(context), // Add this line for DevicePreview
          builder: DevicePreview.appBuilder, // Add this line for DevicePreview
        );
      },
    );
  }
}
