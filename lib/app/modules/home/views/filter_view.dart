import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/filter_controller.dart';

class FilterView extends GetView<FilterController> {
  const FilterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FilterView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FilterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
