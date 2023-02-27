// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/Material.dart';

class SizeManager {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;

    debugPrint("This is default size $defaultSize");
  }
}
