import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead3/views/to_read3_2_view.dart';

import '../controllers/to_read3_controller.dart';

class ToRead3View extends GetView<ToRead3Controller> {
  const ToRead3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '호흡 3. 우리는 어떤 호흡을 해야 할까?',
          style: TextStyle(fontSize: 18, color : Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '앞선 교육들을 통해 사용자님의 현재 호흡양상을 알아보고, 잘못된 호흡 방법이 왜 문제가 되는지를 알아보았습니다.\n\n이번 교육에서는 허리 통증을 완화할 수 있는 호흡 방법이 무엇인지 알아보겠습니다. <복압 호흡>이라고도 불리는 IAP 호흡법인데요, IAP란 intra-abdominal pressure, 즉 복부 내부의 압력을 의미합니다. IAP 호흡법은 쉽게 말해 배가 부풀어져 있는(복부 내부의 압력이 가해진 상태)로 숨을 쉬는 것을 의미합니다.',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ToRead32View()));
              },
              child: Center(
                child: Icon(
                  Icons.arrow_forward, size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
