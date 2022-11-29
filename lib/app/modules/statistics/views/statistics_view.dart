import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistics_controller.dart';

class StatisticsView extends GetView<StatisticsController> {
  const StatisticsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Text(
          'StatisticsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
