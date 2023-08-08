import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  final pageController = PageController().obs;
  final pageIndex = 0.obs;

  void onChangePage(int index) {
    pageIndex.value = index;
  }

  void onTapNavBar(int index) {
    onChangePage(index);
    pageController.value.animateToPage(index,
        duration: const Duration(milliseconds: 150), curve: Curves.linear);
  }
}
