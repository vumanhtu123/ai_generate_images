
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../app/home/home_controller.dart';
import '../generated/assets.dart';

class ItemImagesHome extends GetView<HomeController> {
  const ItemImagesHome({super.key, required this.onTap, required this.index});

  final int index;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Stack(children: [
          CachedNetworkImage(
            imageUrl: controller.data[index] ?? "",
            errorWidget: (c, o, s) => const SizedBox.shrink(),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height / 3,
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                decoration: const BoxDecoration(
                    color: Colors.black26, shape: BoxShape.circle),
                child: SvgPicture.asset(Assets.assetsHeart,
                    width: 23, height: 23)),
          )
        ]),
      ),
    );
  }
}
