import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/alarm_settings_controller.dart';

class AlarmSettingsView extends GetView<AlarmSettingsController> {
  const AlarmSettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('AlarmSettingsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AlarmSettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
