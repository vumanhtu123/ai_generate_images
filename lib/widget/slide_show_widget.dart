import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/home/home_controller.dart';

class HomeBannerComponent extends GetView<HomeController> {
  const HomeBannerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: PageView.builder(
                // controller: controller.pageControllers,
                scrollDirection: Axis.horizontal,
                itemCount: controller.imagesSlide.length,
                onPageChanged: (page) => controller.nextPage(page),
                itemBuilder: (BuildContext context, int index) {
                  final images = controller.imagesSlide[index];
                  return InkWell(
                    onTap: () => {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset(
                        images,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            _dotIndicator()
          ],
        ),
      ),
    );
  }

  Widget _dotIndicator() {
    if (controller.imagesSlide.length == 1) {
      return const SizedBox.shrink();
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        controller.imagesSlide.length,
        (index) => InkWell(
          onTap: () => controller.pageController.jumpToPage(index),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Icon(
              Icons.circle,
              size: controller.pageNo.value == index ? 7 : 5,
              color: controller.pageNo.value == index
                  ? const Color(0xFF000000)
                  : const Color(0xFF767676),
            ),
          ),
        ),
      ),
    );
  }
}
