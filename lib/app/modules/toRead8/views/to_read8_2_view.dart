import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

class ToRead82View extends GetView {
  const ToRead82View({Key? key}) : super(key: key);
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
              Text(
                'Hide의 연구에 따르면, 요통을 경험한 후 증상이 있는 쪽의 다열근 위축(trophy)이 있는 환자는 근육 부피를 회복시키기 위해 고안된 운동 프로그램이 필요하다고 보고하였습니다. 또한 Hodges의 논문에 따르면, 다른 부척추 근육보다 큰 생리학적 단면적(CSA)을 가진 다열근은 급성 요통 증상에서 다열근 CSA의 국소적인 감소가 발견되었다고 합니다. 이에 따라 요통을 예방하고 치료하기 위해 다열근 부피를 회복시키기 위한 운동 프로그램의 필요성이 강조되고 있습니다.',
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
