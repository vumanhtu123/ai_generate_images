
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/styles.dart';
import 'category_controller.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height - 700),
            Center(
              child: Text(
                'LeciaAI Generate Images',
                style: mStyles.textTittleCreate(),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                toolbarOptions: const ToolbarOptions(
                  paste: true,
                  cut: true,
                  selectAll: true,
                  copy: true,
                ),
                textInputAction: TextInputAction.go,
                autofocus: false,
                maxLines: null,
                expands: false,
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.camera_alt_outlined),
                    hintStyle: mStyles.textHintCreate(),
                    hintText: 'Prompt: Please describe the photo you need',
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 0,
                      maxWidth: 80,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
