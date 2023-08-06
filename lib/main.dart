import 'package:buddyjet/app/config/constants/constant_lib.dart';
import 'package:buddyjet/app/config/router/app_router.dart';
import 'package:buddyjet/app/config/themes/no_scroll_overlay.dart';
import 'package:buddyjet/app/config/themes/themes.dart';
import 'package:buddyjet/app/utils/status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

void main() {
  StatusBarManager.setToDefault();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.appTitle,
      debugShowCheckedModeBanner: false,
      scrollBehavior: NoScrollOverlay(),
      theme: Themes().light,
      getPages: AppRouter.router,
      builder: FlutterSmartDialog.init(),
    );
  }
}
