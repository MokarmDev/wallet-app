import 'package:flutter/material.dart';
import 'package:wallet_app/themes/colors.dart';

class TextStyles {
  static TextStyle titleTexStyle({
    double fontSize = 13,
    FontWeight fontWeight = FontWeight.w500,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: MyColor.secondaryColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle textTexStyle({
    double? fontSize,
    FontWeight? fontWeight,
    required Color color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }

  static TextStyle textFiledTexStyle({
    double fontSize = 17,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: MyColor.styleTextFieldColor,
      fontWeight: fontWeight,
    );
  }
}
