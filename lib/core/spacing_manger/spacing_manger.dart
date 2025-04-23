import 'package:flutter/cupertino.dart';

class SpacingManger{
  static const double kPadding=20;


}

SizedBox verticalSpace(double height){
  return  SizedBox(
    height: height,
  );
}

SizedBox horizentalSpace(double width){
  return SizedBox(
    width: width,
  );
}