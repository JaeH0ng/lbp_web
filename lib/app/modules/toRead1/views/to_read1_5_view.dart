import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

// import 'package:lbp_web/app/modules/toRead/controllers/to_read_controller.dart';
// import 'package:lbp_web/app/modules/toRead/views/toReadBreathe/toReadBreath.dart';

class ToRead15View extends GetView {
  ToRead15View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '호흡 1. 우리의 호흡 상태는 어떤가?',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '과연 <가슴호흡>, <복식호흡>, <복압호흡>이란 무엇이며, 우리는 무슨 호흡을 해야 할까요?  \n앞으로의 교육에서는 어떤 호흡이 허리 통증 완화에 이상적인 호흡 방법인지, 다른 호흡 방법은 왜 문제가 되는지 살펴보겠습니다.\n \n핵심 내용 정리 \n현재 나의 호흡 방법을 파악해보자!',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Center(
                child: Icon(Icons.arrow_back, size: 25,),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => ToReadView()),
                    (route) => false);
              },
              child: Center(
                  child: Text(
                '끝',
                style: TextStyle(fontSize: 15),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
