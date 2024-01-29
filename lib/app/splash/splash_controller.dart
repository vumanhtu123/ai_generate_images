import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../../base/routes.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    goToMain();
    super.onInit();
  }

  goToMain() {
    Future.delayed(const Duration(milliseconds: 5000)).then((value) {
      Get.offNamed(Routes.mainApp);
    });
  }
}
