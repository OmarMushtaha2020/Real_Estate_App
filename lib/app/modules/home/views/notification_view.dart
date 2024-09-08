import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            size: 20.w
        ),
        title:  TextWidget('Notification',fontSize: 20.sp,fontWeight: FontWeight.w700,color: Color(0XffE86A53),fontFamily: "RedHatDisplay",),
        centerTitle: true,
      ),
      body:ListView()
    );
  }
}
