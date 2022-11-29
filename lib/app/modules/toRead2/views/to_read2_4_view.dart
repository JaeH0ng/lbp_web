import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead2/views/to_read2_5_view.dart';

class ToRead24View extends GetView {
  const ToRead24View({Key? key}) : super(key: key);
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
                '그렇다면 허리 통증과 호흡은 어떤 관계가 있을까요? “만성요통환자의 호흡패턴이상과 통증과의 상관관계”(임채길, 2020)이라는 연구에 따르면, 호흡패턴 이상을 일으키는 중요 요소는 부적절한 자세와 구조적인 이상이고, 특히 허리 통증을 경험하는 사람은 횡경막의 움직임이 변화되어 호흡패턴에 변화가 발생한다고 했습니다. 또한 올바른 호흡패턴은 요통을 경험하는 사람의 퇴행되거나 손상된 척추사이원반에 중요하다고 했습니다.\n\n결국 올바르지 못한 자세로 인해 호흡패턴의 이상이 발생하고, 이로 인해 통증의 역치가 감소되어 통증을 더 쉽게 느끼게 되는 것입니다. 이를 바로잡기 위해서는 허리의 자세를 바로잡을 뿐 아니라, 올바른 호흡패턴을 수행하여 통증의 수준을 낮출 필요가 있습니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead25View()));
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
