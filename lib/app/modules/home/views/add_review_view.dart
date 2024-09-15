import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddReviewView extends GetView {
  const AddReviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddReviewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddReviewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
