import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

class ToRead72View extends GetView {
  const ToRead72View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '7. 그러면 올바른 자세는 어떤 자세일까?',
          style: TextStyle(fontSize: 18, color: Colors.black),
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
              Image.asset(
                'lib/app/images/toRead/posture7/breathe_7_1.gif',
                height: 320,
              ),
              Text(
                '- 올바른 자세의 예시',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '\n다리나 발목을 꼬지 않고, 허리는 과전만 혹은 후만, 측만되지 않았으며, 고개를 숙이지 않는다.',
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
                  child: Text(
                '끝',
                style: TextStyle(fontSize: 15),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
