import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RatingPageView extends GetView {
  const RatingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RatingPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RatingPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
