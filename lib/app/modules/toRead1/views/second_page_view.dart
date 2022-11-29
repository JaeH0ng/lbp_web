import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead1/views/to_read1_3e_view.dart';

class SecondPageView extends GetView {
  const SecondPageView({Key? key}) : super(key: key);

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
                '어떤가요? \n혹시 핸드폰이 숨을 마시고 내쉼에 따라 움직였나요? 아니면 움직이지 않았나요? \n \n들숨 시 핸드폰이 올라가지 않았다면 사용자님은 <가슴호흡>을 하고 계실 가능성이 높습니다. \n들숨 시에는 핸드폰이 올라갔지만, 날숨 시 핸드폰이 따라 내려갔다면, 사용자님은 <복식호흡>을 하고 계실 가능성이 높습니다. \n들숨 시 핸드폰이 올라갔고, 날숨 시 핸드폰의 위치가 어느정도 유지되었다면, 사용자님은 <복압호흡>을 하고 계실 가능성이 높습니다.',
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
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ToRead13eView()));
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
