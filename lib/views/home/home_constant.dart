import 'package:flutter/material.dart';

const kHomeBackColor = Color(0xFF25727A);
const kHomeRadius = 50.0;
const kHomePadding = 50.0;

TextStyle kHomeTextStyle(
    double fontSize, Color colorName, FontWeight fontWeight) {
  return TextStyle(
    color: colorName,
    fontSize: fontSize,
    fontFamily: "Quicksand",
    fontWeight: fontWeight,
  );
}
