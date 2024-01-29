
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../common/enum.dart';
import '../../common/styles.dart';
import '../../generated/assets.dart';
import 'main_app_controller.dart';

class MainAppPage extends GetView<MainAppController> {
  const MainAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() {
          return PageView(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: controller.onChangeTabController,
            controller: controller.pageController,
            children: controller.pages,
          );
        }),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(splashColor: Colors.transparent),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0), // Bo góc trái trên
                topRight: Radius.circular(20.0), // Bo góc phải trên
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87.withOpacity(0.3),
                  // Màu sắc của bóng đổ và độ trong suốt
                  blurRadius: 10.0,
                  // Độ mờ
                  spreadRadius: 2.0,
                  // Độ lan rộng
                  offset: const Offset(
                      0, 0), // Vị trí của bóng đổ (0, 0 là đỉnh trang)
                ),
              ],
            ),
            child: Obx(() {
              return BottomNavigationBar(
                backgroundColor: const Color(0xFFF9F9F9),
                type: BottomNavigationBarType.shifting,
                onTap: controller.onChangeTab,
                currentIndex: controller.currentIndex.value,
                fixedColor: Get.theme.primaryColor,
                // selectedIconTheme: IconThemeData(color: Get.theme.primaryColor),
                // selectedLabelStyle: const TextStyle(color: Colors.red),
                // unselectedLabelStyle: const TextStyle(color: Colors.blue),
                showUnselectedLabels: false,
                showSelectedLabels: false,
                items: IconHome.values.map((element) {
                  return BottomNavigationBarItem(
                    icon: element.iconUnActive,
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: element.iconActive,
                    ),
                    label: '',
                  );
                }).toList(),
              );
            }),
          ),
        ));
  }
}

extension IconHomeExtension on IconHome {
  String get text => _text();

  _text() {
    switch (this) {
      case IconHome.                                         dashboard:
        return 'Dashboard'.tr;
      case IconHome.generate:
        return 'Create'.tr;
      case IconHome.like:
        return 'Favorite'.tr;
      case IconHome.settings:
        return 'Setting'.tr;
    }
  }

  bool isCurrent(int index) {
    return this == IconHome.values[index];
  }

  Widget get iconActive => _iconActive();

  _iconActive() {
    switch (this) {
      case IconHome.dashboard:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SvgPicture.asset(
                  Assets.assetsHome,
                  width: 25,
                  height: 25,
                  color: Colors.black,
                ),
              ),
              Expanded(child: Text('Home', style: mStyles.text1()))
            ],
          ),
        );
      case IconHome.generate:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SvgPicture.asset(
                  Assets.assetsSearch,
                  width: 25,
                  height: 25,
                  color: Colors.black,
                ),
              ),
              Expanded(child: Text('Create', style: mStyles.text1()))
            ],
          ),
        );
      case IconHome.settings:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SvgPicture.asset(
                  Assets.assetsSettings,
                  width: 25,
                  height: 25,
                  color: Colors.black,
                ),
              ),
              Expanded(child: Text('Setting', style: mStyles.text1())),
              const SizedBox(width: 5)
            ],
          ),
        );
      case IconHome.like:
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SvgPicture.asset(
                  Assets.assetsHeart,
                  width: 25,
                  height: 25,
                  color: Colors.black,
                ),
              ),
              Expanded(child: Text('Favorite', style: mStyles.text1())),
              const SizedBox(width: 8)
            ],
          ),
        );
    }
  }

  Widget get iconUnActive => _iconUnActive();

  _iconUnActive() {
    switch (this) {
      case IconHome.dashboard:
        return SvgPicture.asset(
          Assets.assetsHome,
          width: 25,
          height: 25,
          color: const Color(0xFFA1A2A3),
        );
      case IconHome.generate:
        return SvgPicture.asset(
          Assets.assetsSearch,
          width: 25,
          height: 25,
          color: const Color(0xFFA1A2A3),
        );
      case IconHome.like:
        return SvgPicture.asset(
          Assets.assetsHeart,
          width: 25,
          height: 25,
          color: const Color(0xFFA1A2A3),
        );
      case IconHome.settings:
        return SvgPicture.asset(
          Assets.assetsSettings,
          width: 25,
          height: 25,
          color: const Color(0xFFA1A2A3),
        );
    }
  }
}
