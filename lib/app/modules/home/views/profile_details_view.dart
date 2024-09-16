import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/profile_details_controller.dart';

class ProfileDetailsView extends GetView<ProfileDetailsController> {
  const ProfileDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(size: 20.w),

        title: TextWidget(
          'Profile Detail',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: const Color(0XffE86A53),
          fontFamily: "RedHatDisplay",
        ),
        centerTitle: true,
      ),

      body: const Center(
        child: Text(
          'ProfileDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
