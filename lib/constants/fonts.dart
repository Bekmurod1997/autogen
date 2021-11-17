import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontStyles {
  static boldStyle({
    required double fontSize,
    required String fontFamily,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static thinStyle({
    required double fontSize,
    required String fontFamily,
    bool undeline = false,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static regularStyle({
    required double fontSize,
    required String fontFamily,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static mediumStyle({
    required double fontSize,
    required String fontFamily,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static semiBoldStyle({
    Color color = Colors.black,
    required double fontSize,
    required String fontFamily,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
      color: color,
    );
  }
}
