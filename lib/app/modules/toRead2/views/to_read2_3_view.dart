import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead2/views/to_read2_4_view.dart';

class ToRead23View extends GetView {
  const ToRead23View({Key? key}) : super(key: key);
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
                'EtCO2의 감소는 혈액 산도의 증가를 야기하며 이는 호흡기 알칼리증을 야기합니다.(Gardner, 1996), 호흡성 알칼리증은 생리적, 심리적, 신경상태에 변화를 일으키고 근육뼈대 계통에 부정적인 영향을 미칠 수 있고(Clifton-Smith & Rowley, 2011), 결과적으로 통증에 대한 역치를 감소시켜 몸이 더 아프고, 피로하게 되는 것입니다.\n\n또한, 호흡기 알칼리증이 근육뼈대 계통에 미치는 부정적 영향으로 인해 목뼈 관절의 운동성이 제한되고, 근육이 긴장되는 결과가 초래됩니다.(Jung, 2006)',
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
                    MaterialPageRoute(builder: (context) => ToRead24View()));
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
