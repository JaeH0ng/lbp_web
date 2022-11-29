import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead12/views/to_read12_3_view.dart';

class ToRead122View extends GetView {
  const ToRead122View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '12. 복근운동의 올바른 방법-pelvic tilt',
          style: TextStyle(fontSize: 18 , color : Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'lib/app/images/toRead/back12/back_12_1.gif',
                width: 350,
              ),
              Text(
                '저희가 평소에 누워있을 때는 아래 사진처럼 허리와 바닥이 서로 맞닿지 않습니다.\n',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset(
                'lib/app/images/toRead/back12/back_12_2.gif',
                width: 350,
              ),
              Text(
                '하지만 pelvic tilt 자세를 하신다면 다음 사진과 같이 허리와 바닥이 맞닿게 됩니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead123View()));
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
