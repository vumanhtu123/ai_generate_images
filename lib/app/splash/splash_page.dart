
import 'package:ai_generate_images/app/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/colors.dart';
import '../../common/styles.dart';
import '../../generated/assets.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (SplashController controller) {
        return Scaffold(
          backgroundColor: colorsUtils.splashColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              Image.asset(
                Assets.assetsLogoApp,
                width: 120,
                height: 120,
              ),
              SizedBox(height: mediaQuery.size.width - 300),
              RichText(
                  text: TextSpan(
                      text: 'LecicaAI - ',
                      style: mStyles.textSplash1(),
                      children: [
                    TextSpan(
                        text: 'Images Beautiful', style: mStyles.textSplash2())
                  ])),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: Center(
                  child: LinearProgressIndicator(
                    backgroundColor: Color(0xFFA8A8A8),
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
        );
      },
    );
  }
}
