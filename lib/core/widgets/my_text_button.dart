import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/text_style.dart';

class MyTextButton extends StatelessWidget {
  final Color textColor;
  final String title;
  final void Function()? onPressed;
  const MyTextButton({super.key,required this.textColor,required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: onPressed, child: Text(
      title,
      style: getMyBoldTextStyle(textColor: textColor,fontSize: FontSize.fs12.sp),
    ))
    ;
  }
}
