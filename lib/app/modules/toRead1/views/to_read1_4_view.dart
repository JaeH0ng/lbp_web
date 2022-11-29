import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead1/views/to_read1_5_view.dart';

class ToRead14View extends GetView {
  const ToRead14View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '호흡 1. 우리의 호흡 상태는 어떤가?',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '마지막으로 사용자님이 알고 계신 배호흡을 시행해 주시기 바랍니다. \n배호흡을 시행하며, 사용자님의 배가 움직이는 양상을 관찰하여 주시기 바랍니다.  \n \n숨을 마시면서 부풀었던 배가, 숨을 내쉬면서 가라앉았나요? 아니면 유지되었나요?  \n가라앉았다면 사용자님은 <복식호흡>을, 유지되었다면 사용자님은 <복압호흡>을 하고 계신 겁니다. \n\n ',
                style: TextStyle(fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('가슴호흡 장면, \n어깨와 가슴이 들린다.'),
                      Image.asset(
                        'lib/app/images/toRead/breath1/breathe_1_2.gif',
                        height: 280,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text('복식호흡 장면, \n복부 움직임에 주목하자'),
                      Image.asset(
                        'lib/app/images/toRead/breath1/breathe_1_3.gif',
                        height: 280,
                      ),
                    ],
                  ),
                ],
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
                    MaterialPageRoute(builder: (context) => ToRead15View()));
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
