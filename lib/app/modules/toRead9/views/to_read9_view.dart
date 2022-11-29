import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead9/views/to_read9_2_view.dart';

import '../controllers/to_read9_controller.dart';

class ToRead9View extends GetView<ToRead9Controller> {
  const ToRead9View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          '등배근육 中 장요근에 대하여',
          style: TextStyle(fontSize: 18),
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
                'lib/app/images/toRead/back9/back_9_1.jpg',
                height: 300,
              ),
              Text(
                '\n장요근을 구성하고 있는 요근은 척추의 신전과 굴곡의 기능에 관여하고, 이러한 신전과 굴곡의 힘은 척추가 신전되었을 때 더 커지고, 반대로 척추가 굴곡되었을 때는 굴곡의 기능으로만 작용하는 경향이 있습니다. \n본질적으로 이러한 장요근의 힘은 압박과 전방전단(anterior shear)으로 작용하게 됩니다. 이때, 전단력은 척추를 분리시키는 힘으로 작용하여 허리에 부담을 주게 되고, 결국 요통의 원인이 됩니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead92View()));
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
