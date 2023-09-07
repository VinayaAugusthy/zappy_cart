import 'package:flutter/material.dart';

getHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

getVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Text textBody(String text, double fontSize, FontWeight fontWeight) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
