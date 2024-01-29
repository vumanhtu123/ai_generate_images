
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../../common/enum.dart';
import '../../generated/assets.dart';
import '../../model/image_model.dart';

class HomeController extends BaseController {
  Rx<int> pageNo = 0.obs;
  final RxList<ImagesModel> dataList = <ImagesModel>[].obs;
  List<String?> data = [];
  List<String> imagesSlide = [
    Assets.imagesSlide1,
    Assets.imagesSlide2,
    Assets.imagesSlide3
  ];

  List<String> imageItem = [
    Assets.imagesItem1,
    Assets.imagesItem2,
    Assets.imagesItem3,
    Assets.imagesItem4
  ];

  List<String> tittleItem = ['Abstract', 'Gaming', 'Music', 'Girl'];

  Rx<Status> appState = Status.loading.obs;

  nextPage(int index) {
    pageNo.value = index;
  }

  late final pageController = PageController();
  late final pageControllers = PageController();

  @override
  void onInit() {
    getImage('Abstract');
    super.onInit();
  }

  getImage(String prompt) async {
    appState.value = Status.loading;
    await getImages(prompt).then((value) {
      var list = value.images ?? [];
      dataList.clear;
      dataList.addAll(list);
      if (dataList.isNotEmpty) {
        data =
            value.images?.where((element) => true).map((e) => e.src).toList() ??
                [];
        appState.value = Status.success;
      } else {
        appState.value = Status.failed;
        return;
      }
    });
  }
}