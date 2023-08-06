import 'package:flutter/material.dart';

class ScreenUtil {
  static Size screenSize(BuildContext context) => MediaQuery.of(context).size;
  static double width(BuildContext context) => screenSize(context).width;
  static double height(BuildContext context) => screenSize(context).height;
  static double aspectRatio(BuildContext context) => screenSize(context).aspectRatio;
}