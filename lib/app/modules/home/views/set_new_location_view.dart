import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SetNewLocationView extends GetView {
  const SetNewLocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SetNewLocationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SetNewLocationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
