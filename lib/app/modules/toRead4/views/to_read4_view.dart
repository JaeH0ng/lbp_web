import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead4/views/to_read4_2_view.dart';

import '../controllers/to_read4_controller.dart';

class ToRead4View extends GetView<ToRead4Controller> {
  const ToRead4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '호흡 4. IAP호흡법에 도움되는 크로커다일 호흡법',
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
                '앞선 교육들을 통해 IAP 호흡법이 허리 통증 완화를 도모하고 올바른 자세를 확립할 수 있는 호흡 방법이라는 것을 알아보았습니다.\n\n이번 교육에서는 IAP 호흡법을 좀 더 원활하게 수행할 수 있도록 도와주는 다른 호흡법을 소개하고자 합니다. 바로 “크로커다일 호흡법”이라는 호흡법입니다.\n\n“크로커다일 호흡 운동이 요통 환자들의 척주세움근 근활성도에 미치는 영향”이라는 논문에 따르면, 배호흡 운동은 허리 통증을 경험하는 환자들에게 많이 사용되지만, 치료사의 중재가 있을 때 정확히 할 수 있어 환자 혼자 스스로 정확한 운동을 하는 것이 쉽지 않습니다. 이런 단점을 보완하기 위해 크로커다일 운동에서는 바닥에 엎드린 자세에서 배의 움직임에 초점을 맞추어 호흡합니다. 사용자님은 크로커다일 운동을 수행하며 엎드린 자세에서 배로 바닥을 밀어내기 때문에 배의 움직임을 더 직관적으로 관찰할 수 있게 됩니다. 이 운동을 통해 배의 움직임을 이해하고, 충분히 이해되었을 때 IAP 호흡법을 수행하시면 되겠습니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead42View()));
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
