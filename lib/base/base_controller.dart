import 'package:get/get.dart';

import 'respository/image_respositories.dart';

class BaseController extends GetxController with ImageRepositories{
  // Future<void> openLoadingDialog() async {
  //   final overlayContext = Get.overlayContext;
  //   if (overlayContext != null) {
  //     showDialog(
  //       context: overlayContext,
  //       barrierDismissible: false,
  //       builder: (_) => WillPopScope(
  //         onWillPop: () async => false,
  //         child: const Center(
  //           child: SizedBox(
  //             width: 60,
  //             height: 60,
  //             child: CircularProgressIndicator(
  //               strokeWidth: 10,
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
  //   }
  // }
  //
  // Future<void> openSaveDialog() async {
  //   final overlayContext = Get.overlayContext;
  //   if (overlayContext != null) {
  //     showDialog(
  //       context: overlayContext,
  //       barrierDismissible: true,
  //       barrierColor: Colors.transparent,
  //       builder: (_) => WillPopScope(
  //         onWillPop: () async => false,
  //         child: Center(
  //           child: Container(
  //             width: 100,
  //             height: 100,
  //             decoration: BoxDecoration(
  //               color: const Color(0xFF242424).withOpacity(0.5),
  //               borderRadius: BorderRadius.circular(6),
  //             ),
  //             child: Column(
  //               children: [
  //                 const SizedBox(height: 20),
  //                 SvgPicture.asset(
  //                   'assets/images/Check_icon.svg',
  //                   width: 60,
  //                   height: 60,
  //                 ),
  //                 Text(
  //                   'Saved'.tr,
  //                   style: mTextStyle.ts(
  //                     fontSize: 12,
  //                     decoration: TextDecoration.none,
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
  //     await Future.delayed(const Duration(seconds: 2));
  //     closeLoadingDialog();
  //   }
  // }
  //
  // Future<void> openBottomSaveDialog() async {
  //   final overlayContext = Get.overlayContext;
  //   if (overlayContext != null) {
  //     showModalBottomSheet(
  //       context: overlayContext,
  //       barrierColor: Colors.transparent,
  //       backgroundColor: Colors.transparent,
  //       builder: (_) => WillPopScope(
  //         onWillPop: () async => false,
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             const SizedBox(height: 20),
  //             SvgPicture.asset(
  //               Assets.imagesCheckSuccess,
  //               width: 60,
  //               height: 60,
  //               color: Colors.white,
  //             ),
  //             const SizedBox(height: 5),
  //             Text(
  //               'Saved to gallery!'.tr,
  //               style: mTextStyle.ts(
  //                 fontSize: 12,
  //                 fontWeight: FontWeight.w700,
  //                 decoration: TextDecoration.none,
  //               ),
  //             ),
  //             const SizedBox(height: 65),
  //           ],
  //         ),
  //       ),
  //     );
  //     await Future.delayed(const Duration(seconds: 2));
  //     closeLoadingDialog();
  //   }
  // }
  //
  // Future<void> closeLoadingDialog() async {
  //   final overlayContext = Get.overlayContext;
  //   if (overlayContext != null) {
  //     Navigator.of(overlayContext).pop();
  //   }
  // }
  //
  // Future<void> showErrorDialog({required String? message}) async {
  //   return showDialog<void>(
  //     context: Get.context!,
  //     barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('error'.tr),
  //         content: SingleChildScrollView(
  //           child: Text(message ?? ""),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: Text('OK'.tr),
  //             onPressed: () => Navigator.of(context).pop(),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}