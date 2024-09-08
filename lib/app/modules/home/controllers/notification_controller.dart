import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/notification.dart';

class NotificationController extends GetxController {
  //TODO: Implement NotificationController
List<NotificationModel>notificationModel=[
  NotificationModel("Receipt Released","Your receipt has been released","20/07/2024",Color(0XffE86A53),"assets/image/receipt.png"),
  NotificationModel("Receipt Released","Your receipt has been released","20/07/2024",Color(0Xff5BC347),"assets/image/icon-park-solid_success.png"),
  NotificationModel("Receipt Released","Your receipt has been released","20/07/2024",Color(0XffE76D6D),"assets/image/ic_round-cancel.png"),
  NotificationModel("Receipt Released","Your receipt has been released","20/07/2024",Color(0XffFFDE5B),"assets/image/uiw_loading.png"),

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
