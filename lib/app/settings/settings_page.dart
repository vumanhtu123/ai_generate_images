import 'package:ai_generate_images/app/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('settings')),
    );
  }
}
