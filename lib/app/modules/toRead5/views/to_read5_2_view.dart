import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

class ToRead52View extends GetView {
  const ToRead52View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '호흡 5. 바른 자세유지가 요구되는 시점',
          style: TextStyle(fontSize: 18 , color : Colors.black),
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
                '<바른 자세유지가 요구되는 시점>\n\n현대인들은 생활 속의 많은 상황에서 허리 근육에 스트레스가 가해질 위험을 갖게 됩니다. 그 예시는 대표적으로 아래와 같습니다. \n한쪽 팔을 주로 사용하는 경우,\n가방을 한쪽으로 메는 경우,\n옆으로 누워있는 경우 등은 어깨높이의 차이를 유발합니다. \n\n잘못된 운전습관이나 오랜 시간 컴퓨터를 사용하는 경우, 책상에 고개를 숙이고 오래 앉아있는 경우 등은 등을 굽게 합니다.\n또한 복부비만, 유전, 운동부족은 요부전만이나 후만 상태를 초래하고, 팔자걸음이나 안짱다리 등 걸음걸이의 문제, 한쪽 다리를 꼬고 앉거나 한쪽 다리에 체중을 싣고 서 있는 자세 등은 골반의 변형을 초래하여 다리길이의 변형을 유발합니다.(권휘련 등, 2006)',
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
                  child: Text('끝', style: TextStyle(fontSize: 15),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
