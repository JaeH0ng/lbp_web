import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead5/views/to_read5_2_view.dart';

import '../controllers/to_read5_controller.dart';

class ToRead5View extends GetView<ToRead5Controller> {
  const ToRead5View({Key? key}) : super(key: key);
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
                '안녕하세요 사용자님, <자세> 카테고리에서는 사용자님이 현재 취하고 있는 자세가 요통에 어떤 영향을 미치는 지 알아보고, 올바른 자세에 대해 학습하는 것을 목표로 합니다.\n\n많은 사용자분들이 평소에 취하는 자세가 허리 건강에 얼마나 중요한지 어렴풋이는 알고 계시리라 생각됩니다. 하지만, 정확히 자세와 허리 건강의 관계가 어떤지는 알고 계셨나요? 이번 시간에는 올바르지 못한 자세가 어떤 기전으로 허리에 악영향을 미치게 되는지 학습합니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead52View()));
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
