import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead13/views/to_read13_2_view.dart';

import '../controllers/to_read13_controller.dart';

class ToRead13View extends GetView<ToRead13Controller> {
  const ToRead13View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '13. 복근운동의 올바른 방법-curl up',
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
                '저번시간에 배운 pelvic tilt 자세 잊지 않고 잘 해주셨나요? 잘 하셨다면 칭찬하면서 오늘은 curl-up 운동에 대해 알아보겠습니다.\n\n아마 흔히 알고 있는 윗몸 일으키기와 동작이 달라 많이 당황했을 겁니다. 우리가 알고 있는 윗몸 일으키기 자세는 다음 사진과 같이 머리 뒤에 손을 대고 끝까지 일어나 앉는 자세였습니다.',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset(
                'lib/app/images/toRead/back13/back_13_1.gif',
                height: 250,
              ),
              Text(
                '하지만 이 자세는 허리와 복근에 너무 많은 힘이 요구되기 때문에 부상당할 위험이 크다고 합니다. 또한 복직근에 매우 우세한 운동이기에 근육을 골고루 발달시키기 어렵다고 합니다. 따라서 저희는 이보다 더 쉽고 간편한 curl-up 운동을 하게 된 것입니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead132View()));
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
