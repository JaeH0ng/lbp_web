import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

class ToRead42View extends GetView {
  const ToRead42View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '호흡 4. IAP호흡법에 도움되는 크로커다일 호흡법',
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
              Image.asset(
                'lib/app/images/toRead/breath4/breathe_4_1.gif',
                height: 200,
              ),
              Text(
                '- 크로커다일 호흡 운동\n\n배가 바닥을 밀어내며 골반이 들리는 것에 주목하자. \n여기에 익숙해지면 \n→똑바로 누워서 무거운 물건을 올려두고 시행 \n→ 똑바로 누워서 무게부하 없이 \n→ 앉아서 시행 순으로 시행한다.\n\n크로커다일 운동은 허리 통증과 관련이 높은 척주세움근에서 들숨 시 증가, 날숨 시 이완 효과가 있는 것으로 나타났고, 이는 허리 통증이 감소되는 효과를 야기합니다.\n\n자세한 운동 방법은 <호흡 운동> 카테고리에서 설명하겠습니다.',
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
