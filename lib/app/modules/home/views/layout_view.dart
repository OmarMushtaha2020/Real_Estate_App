import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/layout_controller.dart';

class LayoutView extends GetView<LayoutController> {
  const LayoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LayoutView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
