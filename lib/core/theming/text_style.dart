
import 'package:flutter/material.dart';

class FontFamily{
  static const String nunitoSansFamily='NunitoSans';
}

class FontSize{
  static const double fs10=10;
  static const double fs12=12;
  static const double fs14=14;
  static const double fs16=16;
  static const double fs18=18;
  static const double fs20=20;
  static const double fs22=22;
}

TextStyle _getMyTextStyle({
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
  TextDecoration ?textDecoration,
  Color? decorationColor,

}) {
  return TextStyle(
      color: color,
      fontSize: fontSize,
      decoration:textDecoration ,
      decorationColor: decorationColor,
      fontFamily: FontFamily.nunitoSansFamily,
      fontWeight: fontWeight,
      decorationThickness: 3

  );
}

TextStyle getMyLightTextStyle({
  required Color textColor,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w300,
}) {
  return _getMyTextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

TextStyle getMyRegularTextStyle({
  required Color textColor,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w400,
  Color? decorationColor,
  TextDecoration ?textDecoration

}) {
  return _getMyTextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      textDecoration: textDecoration,
      decorationColor: decorationColor
  );
}

TextStyle getMyMediumTextStyle({
  required Color textColor,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return _getMyTextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

TextStyle getMyBoldTextStyle({
  required Color textColor,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w600,
}) {
  return _getMyTextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}
