import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

class InputDecorations {
  static InputDecoration buildInputDecoration({
    required hintText,
    required prefixIconPath,
    required color,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyles.textFiledTexStyle(),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color, width: 2)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: MyColor.styleTextFieldColor, width: 2)),
      prefixIcon: Image.asset(
        prefixIconPath,
        color: MyColor.styleTextFieldColor,
      ),
    );
  }
}
