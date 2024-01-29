
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../common/enum.dart';
import '../../common/styles.dart';
import '../../widget/item_images_home.dart';
import '../../widget/item_list_search_widget.dart';
import '../../widget/slide_show_widget.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width - 150,
                  child: const HomeBannerComponent()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Category', style: mStyles.textHome1()),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width - 300,
                child: Center(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                  itemCount: controller.imageItem.length,
                  itemBuilder: (context, index) {
                    return itemListSearch(
                        images: controller.imageItem[index],
                        tittle: controller.tittleItem[index],
                        onTap: () =>
                            controller.getImage(controller.tittleItem[index]));
                  }),
            ),
          ),
          Obx(() => (controller.appState.value == Status.loading)
              ? const Center(
                  heightFactor: 5, child: CircularProgressIndicator())
              : (controller.appState.value == Status.success)
                  ? MasonryGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      itemCount: controller.data.length,
                      itemBuilder: (context, index) {
                        return ItemImagesHome(
                          index: index,
                          onTap: () {},
                        );
                      },
                    )
                  : Center(
                      heightFactor: 8,
                      child: Text('Reload', style: mStyles.textFailed())))
        ],
          ),
        ));
  }
}
