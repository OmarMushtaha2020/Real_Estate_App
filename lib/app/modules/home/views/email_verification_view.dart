import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/email_verification_controller.dart';

class EmailVerificationView extends GetView<EmailVerificationController> {
  const EmailVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EmailVerificationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EmailVerificationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
