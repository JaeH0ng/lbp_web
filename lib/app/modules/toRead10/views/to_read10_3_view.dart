import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead10/views/to_read10_4_view.dart';

class ToRead103View extends GetView {
  const ToRead103View({Key? key}) : super(key: key);
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
                '만약 이런 역할을 하는 복직근이 약화된다면 어떻게 될까요? \n앞에서 복직근이 척추 주변의 근육의 부하를 감소시킨다는 사실을 기억하시죠? 복직근이 약해지게 되면 복직근 대신 척추주변이 있는 근육들이 긴장이 되고 경직되면서 우리가 평상시에 겪는 허리통증 즉, 요통이 발생하게 됩니다. 또한 복직근은 우리 몸의 코어근육 중 하나이기에 신체의 안정성에 문제가 발생할 수 있습니다. 따라서 우리는 열심히 운동을 해야 되겠죠?\n\n하지만 복직근만을 강화시키기 위한 운동을 너무 많이 하면 문제점이 발생합니다. 바로 복직근이 커지고 뻣뻣해지면서 다음 그림과 같이 등이 굽고 어깨가 말리는 흉추후만이 발생할 수 있습니다. 또한 허리를 양 옆으로 회전할 수 있는 능력이 감소된다고 합니다.',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset(
                'lib/app/images/toRead/abdominis10/abdominus_10_2.gif',
                height: 200,
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
                    MaterialPageRoute(builder: (context) => ToRead104View()));
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
