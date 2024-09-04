import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_controller.dart';

class SetUpLocationView extends GetView<SetUpLocationController> {
  const SetUpLocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SetUpLocationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SetUpLocationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
