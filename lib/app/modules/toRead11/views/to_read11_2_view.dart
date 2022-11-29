import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

class ToRead112View extends GetView {
  const ToRead112View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '11. 복사근운동은 왜 해야 하나요?',
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
                '이 2개의 근육은 사선의 방향이 다르며 2개의 근육의 움직임을 통해 다양한 운동을 할 수 있습니다. 우선 외복사근은 주로 옆으로 구부리는 동작 시 사용됩니다. 반면 내복사근은 허리를 앞으로 구부리는 동작 시 사용됩니다. 이러한 근육 기능이 합쳐져 복사근은 주로 허리를 회전하는 기능을 가지고 있습니다.\n따라서 복사근이 약해지면 허리를 회전시키는 운동은 하기 어렵겠죠? 또한 자세에도 변화가 일어납니다. 원래 복사근이 골반이 약간 뒤로 경사져 위치를 할 수 있게 도와주는데 근력이 약해지면 이러한 구조가 무너지게 됩니다. 따라서 골반이 앞으로 밀려나가 등이 굽을 수 있습니다.\n\n우리가 흔히 알고 있는 복근운동, 예를 들면 윗몸 일으키기와 같은 운동은 대부분 복직근만을 사용하는 운동이라고 합니다. 따라서 복사근을 강화시키기 어려울 수 있습니다. 이 기회에 dead bug, bird dog 와 같은 운동을 열심히 하여 사근을 강화시키는 것을 어떨까요?',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset(
                'lib/app/images/toRead/abdominis11/abdominus_11_1.gif',
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
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => ToReadView()),
                        (route) => false);
              },
              child: Center(
                  child: Text('끝', style: TextStyle(fontSize: 15),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
