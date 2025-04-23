import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manger.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/my_text_button.dart';

class BuildTitleWithButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const BuildTitleWithButton({super.key,required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return           Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getMyBoldTextStyle(
            textColor: Colors.white,
            fontSize: FontSize.fs18.sp,
          ),
        ),
        MyTextButton(
          textColor: ColorManger.kYellow,
          title: 'Show All',
          onPressed: onTap,
        ),
      ],
    );
  }
}
