import 'package:e_commerce_application/features/authetication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & Jump to next Page
  void nextPage() {
    if(currentPageIndex.value == 2) {
      final storage = GetStorage();

      /* if (kDebugMode) {
        print("=========== GET STORAGE Next Button ===========");
        print(storage.read("isFirstTime"));
      }
      */

      storage.write("isFirstTime", false);

      /*if (kDebugMode) {
        print("=========== GET STORAGE Next Button ===========");
        print(storage.read("isFirstTime"));
      }*/

      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}