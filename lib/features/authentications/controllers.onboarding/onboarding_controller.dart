import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables

  ///Update Current Index When Page Scroll
  void updatePageIndicator(index) {}

  ///Jump to Specific dot selected page
  void dotNavigationClick(index) {}

  ///Update Current Index & Jump to next page
  void nextPage() {}

  ///Update Current Index & Jump to last page
  void skipPage() {}
}
