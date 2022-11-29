import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead6/views/to_read6_2_view.dart';

import '../controllers/to_read6_controller.dart';

class ToRead6View extends GetView<ToRead6Controller> {
  const ToRead6View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '6. 잘못된 자세는 어떤 문제를 낳을까?',
          style: TextStyle(fontSize: 18, color: Colors.black),
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
              Image.asset(
                'lib/app/images/toRead/posture6/breathe_6_1.jpg',
                height: 350,
              ),
              Text(
                '- 앉아서 다리를 꼰 자세(잘못된 자세)',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '\n건강한 사람에 비해 요통을 경험하는 사람은 무게중심을 후방으로 유지하려는 경향이 강합니다. 이는 신체의 근육을 이완시키고 척추뼈의 전만 곡선이 증가하는 결과를 초래하여, 척추신경에 가해지는 압박을 더하고 역학적 스트레스를 가하게 됩니다. 또한 이런 자세는 허리의 근육, 건(힘줄), 인대를 불균형하게 하고 척추의 불규칙적인 변형을 초래하여, 만성요통의 원인이 됩니다.(신재훈, 2002)',
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
                    MaterialPageRoute(builder: (context) => ToRead62View()));
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
