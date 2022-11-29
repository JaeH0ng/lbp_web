import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:lbp_web/app/modules/exercise/views/exercise_view.dart';
import 'package:lbp_web/app/modules/home/views/end_drawer_view.dart';
import 'package:lbp_web/app/modules/navigation/custom_animated_bottom_bar.dart';
// import 'package:lbp_web/app/modules/settings/views/settings_view.dart';
// import 'package:lbp_web/app/modules/statistics/views/statistics_view.dart';
// import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final _inactiveColor = Colors.grey;

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller2 = Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) {
        return WillPopScope(
          onWillPop: () async {
            return !await controller2
                .navigatorKeysList[controller2.tabIndex.value].currentState!
                .maybePop();
          },
          child: Obx(
            () => Scaffold(
              endDrawer: EndDrawerView(),
              appBar: AppBar(
                leading: controller2.isExerciseViewOpen.value
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back),
                      )
                    : Container(),
                iconTheme: IconThemeData(
                  size: 30,
                  color: Colors.white,
                ),
                elevation: 5,
                backgroundColor: Colors.lightGreenAccent[700],
                centerTitle: true,
                title: controller2.isExerciseViewOpen.value
                    ? Text(
                        '오늘의 운동',
                        style: TextStyle(fontSize: 20),
                      )
                    : Image.asset(
                        'lib/app/images/logo_image/logo_image.png',
                        height: 80,
                        color: Colors.white,
                      ),
              ),
              body: SafeArea(
                child: IndexedStack(
                  index: controller2.tabIndex.value,
                  children: controller2.pages.map((page) {
                    int index = controller2.pages.indexOf(page);
                    return Navigator(
                      key: controller2.navigatorKeysList[index],
                      onGenerateRoute: (_) {
                        return MaterialPageRoute(builder: (context) => page);
                      },
                    );
                  }).toList(),
                ),
              ),
              bottomNavigationBar: CustomAnimatedBottomBar(
                containerHeight: 70,
                selectedIndex: controller2.tabIndex.value,
                showElevation: true,
                itemCornerRadius: 24,
                curve: Curves.easeIn,
                onItemSelected: controller2.changeTabIndex,
                backgroundColor: Colors.white30,
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                    icon: Icon(Icons.sports_kabaddi_outlined),
                    title: Text('오늘의 운동'),
                    activeColor: Colors.indigo,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.menu_book_outlined),
                    title: Text('읽을 거리'),
                    activeColor: Colors.brown,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.show_chart_outlined),
                    title: Text('기록'),
                    activeColor: Colors.pink,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.settings),
                    title: Text('설정'),
                    activeColor: Colors.blue,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
