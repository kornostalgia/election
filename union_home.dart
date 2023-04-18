import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/union/union_three.dart';
import 'package:korelectioninfo/union/union_two.dart';
import 'package:korelectioninfo/union/union_controller.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:korelectioninfo/union/union_one.dart';

class UnionHome extends GetView<UnionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        children: [
          UnionOne(),
          UnionTwo(),
          // UnionThree(),
        ],
        controller: controller.pageController,
      ),
      bottomNavigationBar: Obx(() => FancyBottomNavigation(
            tabs: [
              TabData(iconData: Icons.auto_stories, title: '위탁선거법'),
              TabData(iconData: Icons.check_circle_outline, title: '실전 사례'),
              // TabData(iconData: Icons.phonelink_ring, title: '주요 뉴스'),
            ],
            onTabChangedListener: (position) {
              controller.currentIndex.value = position;
              controller.pageController.jumpToPage(position);
            },
            initialSelection: controller.currentIndex.value,
            key: controller.bottomNavigationKey,
            inactiveIconColor: Colors.grey,
            activeIconColor: Colors.redAccent,
          )),
    );
  }
}
