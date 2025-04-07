import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // jump to specific selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update current page to nex page
  void nextPage() {
    if (currentPageIndex.value == 4) {
      Get.offAll(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current page to last page
  void skipPage() {
    currentPageIndex.value = 4;
    pageController.jumpToPage(4);
  }
}
