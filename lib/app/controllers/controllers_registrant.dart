import 'package:buddyjet/app/controllers/index_controller.dart';
import 'package:get/get.dart';

class ControllersRegistrant {
  static void putLazy() {
    Get.lazyPut(() => IndexController());
  }
}
