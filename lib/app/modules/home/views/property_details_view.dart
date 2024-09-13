import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PropertyDetailsView extends GetView {
  const PropertyDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PropertyDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PropertyDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
