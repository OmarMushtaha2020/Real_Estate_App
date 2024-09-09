import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BookMarkView extends GetView {
  const BookMarkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookMarkView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BookMarkView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
