import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/spacing_manger/spacing_manger.dart';
import '../../../../core/theming/color_manger.dart';
import '../../../../core/theming/text_style.dart';

class BuildRowUserData extends StatelessWidget {
  const BuildRowUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Anderson',
              style: getMyBoldTextStyle(textColor: Colors.white,fontSize: FontSize.fs18.sp),
            ),
            verticalSpace(2),
            Text(
              'Have a nice day',
              style: getMyBoldTextStyle(textColor: ColorManger.kGrey,fontSize: FontSize.fs12.sp),
            )

          ],
        ),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 22.r,
            backgroundImage:const NetworkImage('https://t3.ftcdn.net/jpg/04/75/61/66/360_F_475616692_xk5LXk9qnSpUXfAtuQ9lu0ZklH2l6GpK.jpg'),
          ),
        )

      ],
    );
  }
}
