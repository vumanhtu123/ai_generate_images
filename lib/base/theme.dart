import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/colors.dart';

ThemeData theme = ThemeData(
  primaryColor: colorsUtils.themeColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ),
  ),
);