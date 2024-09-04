import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SetUpLocationView extends GetView {
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
