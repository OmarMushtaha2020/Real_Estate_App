import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/views/book_mark_view.dart';
import 'package:real_estate_app/app/modules/home/views/chat_view.dart';
import 'package:real_estate_app/app/modules/home/views/home_view.dart';
import 'package:real_estate_app/app/modules/home/views/notification_view.dart';

class LayoutController extends GetxController {
  //TODO: Implement LayoutController
  var currentIndex = 0; // Observable variable for index
List <Widget>screen=[
  HomeView(),
  BookMarkView(),
  ChatView(),
NotificationView()

];
  // Function to update the selected index
  void updateIndex(int index) {
    currentIndex = index;
    update();
  }
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
