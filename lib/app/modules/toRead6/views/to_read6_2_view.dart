import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

class ToRead62View extends GetView {
  const ToRead62View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          '6. 잘못된 자세는 어떤 문제를 낳을까?',
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
                '일반적으로 올바른 자세란, 신체의 무게중심이 유양돌기로부터 어깨, 골반, 무릎, 발목의 전방을 지나는 자세입니다.(류록규, 1998), 정상적으로 인간은 균형 유지를 위해 경추전만, 흉추후만, 요추전만의 자세를 취하지만, 바르지 못한 자세는 측만증, 후만증, 전만증, 전경두부 등의 척추 변형을 초래합니다.(김명기, 2005)\n\n바르지 못한 자세가 오래 지속되면 고관절 굴곡근, 요부 신전근, 복근의 긴장과 약화되고, 등이 평평하다면 골반의 후경사, 요부의 충격 흡수율 저하, 후종인대의 긴장으로 인한 추간판의 후방 탈출 가능성 증가 등의 문제가 발생합니다. 축이 높은 신발을 신은 듯한 자세를 유지한다면 비복근과 슬괵근이 단축되고 고관절이 신전, 장요근이 긴장하며 허리는 과전만(앞으로 너무 튀어나온 상태)됩니다. 허리의 신전근이 너무 강하다면 허리의 전만각(앞으로 튀어나온 정도)가 증가하고, 양쪽 신전근의 균형이 맞지 않는다면 측만증, 양쪽 신전근이 모두 약하다면 후만증이 발생합니다.(이경정, 2006)',
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
