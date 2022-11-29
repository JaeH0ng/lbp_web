import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead11/views/to_read11_2_view.dart';

import '../controllers/to_read11_controller.dart';

class ToRead11View extends GetView<ToRead11Controller> {
  const ToRead11View({Key? key}) : super(key: key);
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
                '다들 운동 열심히 하고 계신가요?\n처음 할 때 보다는 많이 적응 되셨나요? 물론 아직 힘드신 분도 계시죠? 하지만 꾸준히 하다 보면 언젠가는 이러한 동작들이 익숙해질 때가 올 거에요. 우리 조금 더 힘내 봐요!\n\n오늘은 저번에 이어서 복사근이라는 근육을 알아 볼 겁니다. 혹시 많은 연예인 또는 운동선수들이 복근을 보여줄 때 앞에 보이는 식스팩 뿐만 아니라 옆구리 쪽에 사선으로 보이는 근육을 보신적이 있나요? 흔히 옆구리 근육으로 알고 있는 근육이 바로 ‘복사근’ 입니다.\n\n복사근은 두종류로 좀 더 안쪽에 있는 내복사근, 바깥쪽에 있는 외복사근으로 되어 있습니다. 아래에 있는 사진은 바로 외 복사근입니다. ',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ToRead112View()));
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
