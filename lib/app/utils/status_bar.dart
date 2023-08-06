import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarManager {
  static void setToDefault() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark,
    ));
  }
}
