import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead10/views/to_read10_3_view.dart';

class ToRead102View extends GetView {
  const ToRead102View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '10. 복직근운동은 왜 해야 하나요?',
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
                '혹시 복근 하면 뭐가 떠오르시나요? 식스팩이 가장 먼저 떠오르시지는 않나요? 우리가 흔히 알고있는 그리고 볼 수 있는 복근은 바로 식스팩을 만드는 ‘복직근’입니다. 오늘은 우선 이 복직근에 대해서 알아보는 시간을 가지도록 합시다!\n\n복직근은 아래의 사진처럼 우리 배의 중앙에 있는 근육으로 주로 자세를 유지하거나 허리를 구부릴 때 사용하는 근육입니다. 또한 가장 중요한 역할은 척추주변의 근육과 역할을 분배하여 조금이라도 척추주변근육의 부담을 덜어줍니다.\n',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset(
                'lib/app/images/toRead/abdominis10/abdominus_10_1.jpg',
                height: 300,
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
                    MaterialPageRoute(builder: (context) => ToRead103View()));
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
