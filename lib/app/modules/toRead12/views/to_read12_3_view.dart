import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

class ToRead123View extends GetView {
  const ToRead123View({Key? key}) : super(key: key);
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '보기에는 쉬워 보이지만 처음에는 많이 어려웠을 겁니다. 그러면 굳이 ‘pelvic tilt’를 해야 하는 이유가 있을까요? \n바로 허리의 뻣뻣함을 줄여주고 허리근육을 부드럽게 펴는데 도움이 된다고 합니다. 특히 복부와 엉덩이 근육을 강화시켜 저희의 운동목적에 딱 맞는 운동입니다. 만약 아직도 이 자세가 어려우신 분들은 허리 밑에 수건을 한 장 깔고 그 수건을 꾹 눌러 수건과 허리 사이에 공간을 최소화한다는 느낌으로 하시면 훨씬 더 쉽게 하실 수 있을 겁니다.\n\n오늘은 여기까지 올바른 운동자세에 대해 안내 드리겠습니다. 오늘 배운 내용 잊지 말고 꼭 bridge, dead bug자세 때 해주세요!',
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
                  child: Text('끝', style: TextStyle(fontSize: 15),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
