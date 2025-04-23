import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/spacing_manger/spacing_manger.dart';
import '../../../../core/theming/color_manger.dart';
import '../../../../core/theming/text_style.dart';

class BuildCategory extends StatelessWidget {
  const BuildCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsetsDirectional.all(SpacingManger.kPadding/1.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(SpacingManger.kPadding/2),
          color: ColorManger.kGreyDark
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Science',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: getMyBoldTextStyle(textColor: Colors.white,fontSize: FontSize.fs14.sp),
            ),
          ),
          Expanded(
            child: Text(
              'Environment',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,

              style: getMyBoldTextStyle(textColor: Colors.white,fontSize: FontSize.fs14.sp),
            ),
          ),
          Expanded(
            child: Text(
              'Animals',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,

              style: getMyBoldTextStyle(textColor: Colors.white,fontSize: FontSize.fs14.sp),
            ),
          ),
          Expanded(
            child: Text(
              'Travel',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,

              style: getMyBoldTextStyle(textColor: Colors.white,fontSize: FontSize.fs14.sp),
            ),
          )
        ],
      ),
    );
  }
}
