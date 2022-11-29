import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';
import 'package:lbp_web/app/modules/toRead2/views/to_read2_2_view.dart';

import '../controllers/to_read2_controller.dart';

class ToRead2View extends GetView<ToRead2Controller> {
  const ToRead2View({Key? key}) : super(key: key);
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '지난 교육자료를 통해 사용자님은 본인의 호흡 양상이 어떤지 파악하셨으리라 생각됩니다. 결론부터 이야기하자면, 허리 통증 완화에 가장 이상적인 호흡 방법은 <복압호흡> 방법입니다. \n\n그렇다면 이번 교육에서는, 복압 호흡 외의 호흡방식, 특히 가슴호흡이 왜 문제가 되는지 알아보겠습니다.',
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
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => ToReadView()),
                        (route) => false);
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
                    MaterialPageRoute(builder: (context) => ToRead22View()));
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
