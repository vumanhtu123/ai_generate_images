
import 'package:ai_generate_images/base/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../app/mainapp/main_app.dart';
import '../app/mainapp/main_app_controller.dart';
import '../app/splash/splash_page.dart';

List<GetPage> getPages = [
  GetPage(name: Routes.splash, page: () => const SplashPage()),
  GetPage(
      name: Routes.mainApp,
      page: () => const MainAppPage(),
      binding: MainAppBinding())
];
