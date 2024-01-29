
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../category/category_controller.dart';
import '../category/category_page.dart';
import '../favorite/favorite_controller.dart';
import '../favorite/favorite_page.dart';
import '../home/home_controller.dart';
import '../home/home_page.dart';
import '../settings/settings_controller.dart';
import '../settings/settings_page.dart';

class MainAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainAppController>(() => MainAppController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
    Get.lazyPut<CategoryController>(() => CategoryController());
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}

class MainAppController extends BaseController {
  final RxList<Widget> pages = <Widget>[].obs;
  PageController? pageController;
  final currentIndex = 0.obs;

  @override
  void onInit() {
    addPages();
    ever(currentIndex, _onChangeIndex);
    pageController = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  Future<void> onChangeTab(int tabIndex) async {
    // if (currentIndex.value != tabIndex) {
    //   if ((tabIndex - currentIndex.value).abs() > 1) {
    //     await pageController?.animateToPage(
    //       tabIndex,
    //       duration: const Duration(milliseconds: 200),
    //       curve: Curves.linear,
    //     );
    //   } else {
    //     await pageController?.animateToPage(
    //       tabIndex,
    //       duration: const Duration(milliseconds: 200),
    //       curve: Curves.linear,
    //     );
    //   }
    //   currentIndex.value = tabIndex;
    // }
    if (currentIndex.value != tabIndex) {
      if ((tabIndex - currentIndex.value).abs() > 0) {
        pageController?.jumpToPage(
          tabIndex,
        );
      } else {
        pageController?.jumpToPage(
          tabIndex,
        );
      }
      currentIndex.value = tabIndex;
    }
  }

  void onChangeTabController(int tabIndex) {
    if (currentIndex.value != tabIndex) {
      currentIndex.value = tabIndex;
    }
  }

  addPages() {
    pages.clear();
    pages.addAll([
      const HomePage(),
      const CategoryPage(),
      const FavoritePage(),
      const SettingsPage()
    ]);
  }
}

_onChangeIndex(int index) {
  switch (index) {
    case 0:
      Get.find<HomeController>().onInit();
      break;
    case 1:
      Get.find<CategoryController>().onInit();
      break;
    case 2:
      Get.find<FavoriteController>().onInit();
      break;
    case 3:
      Get.find<SettingsController>().onInit();
      break;
  }
}
