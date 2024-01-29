import 'package:flutter/material.dart';
import '../common/styles.dart';

Widget itemListSearch(
    {required String images, required String tittle, required Function onTap}) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Stack(alignment: Alignment.center, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              images,
              width: 80,
              height: 60,
              fit: BoxFit.cover,
            )),
      ),
      Text(tittle, style: mStyles.textHome2())
    ]),
  );
}
