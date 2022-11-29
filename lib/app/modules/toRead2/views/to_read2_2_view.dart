import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead2/views/to_read2_3_view.dart';

class ToRead22View extends GetView {
  const ToRead22View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '호흡 2. 잘못된 호흡은 어떤 문제를 낳을까?',
          style: TextStyle(fontSize: 18, color : Colors.black),
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
                '호흡은 인간의 생명 유지를 위해서 필수적인 활동으로, 신체의 세포들이 활동하는 데 필요로 하는 산소를 공급하는 역할을 수행합니다. 비록 가슴호흡을 한다고 해서 생명에 지장이 있는 것은 아니지만, 통증과 피로를 겪는 사람들에게서 가슴호흡은 통증을 심화시킵니다. \n\n호흡 시 날숨 끝 이산화탄소(EtCO2)를 분석했을 때, 정상 범위는 35-40mmHg이고 35mmHg 미만이라면 이상이 있는 호흡패턴이라고 정의합니다. “만성요통환자의 호흡패턴이상과 관절위치감각의 관계”(조병윤, 윤정규, 2019)라는 연구의 연구결과에 따르면, 가슴호흡을 시행하는 연구 대상자의 평균 EtCO2는 32.77mmHg로, 이상이 있는 가슴호흡 패턴에 해당합니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead23View()));
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
