import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();
  /// Variables

  /// Update Currest Index when Page Scroll
  void updatePageIndicator(index){}

  /// Jump to the specific dot selected page
  void dotNavigationClick(index){}

  /// Update Currest Index and jump to next page
  void nextPage(index){}

  /// Update Currest Index and jump to last page
  void skipPage(index){}

}