import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';
import 'package:lbp_web/app/modules/toRead1/views/second_page_view.dart';

import '../controllers/to_read1_controller.dart';

class ToRead1View extends GetView<ToRead1Controller> {
  const ToRead1View({Key? key}) : super(key: key);

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
                '안녕하세요 사용자님, \n \n <호흡> 카테고리에서는 사용자님이 현재 수행하고 있는 호흡양상이 올바른지 판단하고, 잘못된 호흡 방법이 신체에 어떤 영향을 미치는 지 알아보고, 올바른 호흡법을 숙지하고 실천하는 것을 목표로 합니다. \n \n 먼저, 사용자님의 호흡 상태를 분석해 보겠습니다. \n',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset(
                'lib/app/images/toRead/breath1/breathe_1_1.gif',
                height: 210,
              ),
              Text(
                '\n 위의 사진과 같이 우선 바닥에 편하게 누워 주시고, 배꼽 위에 핸드폰을 올려둔 뒤 핸드폰을 바라본 채로 호흡해 주시기 바랍니다. \n',
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
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => ToReadView()),
                    (route) => false);
              },
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
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
                    MaterialPageRoute(builder: (context) => SecondPageView()));
              },
              child: Center(
                child: Icon(Icons.arrow_forward,  size: 25,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
