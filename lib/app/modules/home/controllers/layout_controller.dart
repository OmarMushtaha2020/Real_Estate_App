import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/views/book_mark_view.dart';
import 'package:real_estate_app/app/modules/home/views/chat_view.dart';
import 'package:real_estate_app/app/modules/home/views/home_view.dart';
import 'package:real_estate_app/app/modules/home/views/profile_view.dart';

class LayoutController extends GetxController {
  // List of screens corresponding to the navigation items
  final List<Widget> screen = [
    HomeView(),
    BookMarkView(),
    ChatView(),
    ProfileView(),
  ];
  String getIconPath(int itemIndex) {
    return index == itemIndex
        ? selectedIcons[itemIndex]
        : unselectedIcons[itemIndex];
  }
  final List<String> labels = [
    'Explore',
    'Saved',
    'Chat',
    'Profile',
  ];

  final List<String> selectedIcons = [
    'assets/image/ion_compass.png',
    'assets/image/archive_white.png',
    'assets/image/message.png',
    'assets/image/profile_white_color.png',
  ];

  final List<String> unselectedIcons = [
    'assets/image/ion_compass_grey.png',
    'assets/image/archiveGrey.png',
    'assets/image/message_grey.png',
    'assets/image/profile_circle.png',
  ];
  // Reactive variable for selected item state
  int index =0 ;

  void setSelectedItem(int value) {
    index = value;
    print(index);
    update();
  }
}
