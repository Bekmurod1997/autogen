import 'package:flutter/material.dart';

class AppScale {
  static double scaledWidth(
    double widthScale,
    BuildContext context,
  ) {
    return MediaQuery.of(context).size.width * widthScale;
  }

  static double scaledHeight(double heightScale, BuildContext context) {
    return MediaQuery.of(context).size.height * heightScale;
  }
}
