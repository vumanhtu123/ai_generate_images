import 'package:flutter/material.dart';

class MStyles {
  TextStyle text1() {
    return const TextStyle(
        color: Color(0xFF292D32), fontWeight: FontWeight.w500, fontSize: 13);
  }

  TextStyle textSplash1() {
    return const TextStyle(
        color: Color(0xFFFFFFFF), fontWeight: FontWeight.w800, fontSize: 18);
  }

  TextStyle textSplash2() {
    return const TextStyle(
        color: Color(0xFFFFFFFF), fontWeight: FontWeight.w400, fontSize: 18);
  }

  TextStyle textHome1() {
    return const TextStyle(
        color: Color(0xFF29323B), fontWeight: FontWeight.w600, fontSize: 17);
  }

  TextStyle textHome2() {
    return const TextStyle(
        color: Color(0xFFFFFFFF), fontWeight: FontWeight.w600, fontSize: 13);
  }

  TextStyle textFailed() {
    return const TextStyle(
        color: Color(0xFF000000), fontWeight: FontWeight.w600, fontSize: 18);
  }

  TextStyle textTittleCreate() {
    return const TextStyle(
        color: Color(0xFF000000), fontWeight: FontWeight.w900, fontSize: 20);
  }

  TextStyle textHintCreate() {
    return const TextStyle(
        color: Color(0xFF747475), fontWeight: FontWeight.w400, fontSize: 14);
  }
}

final mStyles = MStyles();
