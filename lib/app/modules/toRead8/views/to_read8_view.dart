import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead8/views/to_read8_2_view.dart';

import '../controllers/to_read8_controller.dart';

class ToRead8View extends GetView<ToRead8Controller> {
  const ToRead8View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '8. 등배근육 中 다열근에 대하여',
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
                'lib/app/images/toRead/back8/back_8_1.jpg',
                height: 300,
              ),
              Text(
                '\n다열근은 척추의 극돌기에 붙어 있는 근육입니다. \n가장 중요한 다열근의 기능은 척추가 전방으로 굴곡을 하는 동안 원심성 수축(ecentric contraction)을 통해 전방 전단(anterior shear)과 굴곡을 조절하는 것입니다. \n쉽게 말하면 굴곡 힘(flexion force)에 대항 균형(counterbalancing)을 하고, 압박력(compression force)을 가해 척추의 안정성에 기여한다고 할 수 있습니다.',
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
                    MaterialPageRoute(builder: (context) => ToRead82View()));
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
