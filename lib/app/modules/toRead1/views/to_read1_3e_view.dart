import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead1/views/to_read1_4_view.dart';

class ToRead13eView extends GetView {
  const ToRead13eView({Key? key}) : super(key: key);
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
                '다른 방법을 사용해 보겠습니다. \n이번엔 서거나 앉은 상태에서, 편하게 숨을 마셔보겠습니다. \n숨을 충분히 마신 상태에서 숨을 잠시 참고, 명치 부근의 뼈(복장뼈의 하단 끝)과 양 갈비뼈의 끝을 잇는 가상의 선을 그려보겠습니다.',
                style: TextStyle(fontSize: 15),
              ),
              //image 필요한가?
              Text(
                '\n 두 선이 90도를 넘는다면, 사용자님은 <가슴호흡>을 하고 계신 겁니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead14View()));
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
