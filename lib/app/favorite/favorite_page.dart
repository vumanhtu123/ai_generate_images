import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorite_controller.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('favorite')),
    );
  }
}
