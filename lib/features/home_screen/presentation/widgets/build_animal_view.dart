import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/spacing_manger/spacing_manger.dart';
import '../../../../core/theming/text_style.dart';

class BuildAnimalView extends StatelessWidget {
  const BuildAnimalView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 140.h,

      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(SpacingManger.kPadding),

      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: [
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2LEGSaBOywzP40AS6b-98htHQ9UTNTPDxYw&s',fit: BoxFit.cover,),
          const Positioned(
            top: 10,
            left: 10,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child:Icon(Icons.pause,color: Colors.white,) ,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: Text(
              'ANIMALS',
              style: getMyBoldTextStyle(textColor: Colors.white,fontSize: FontSize.fs18.sp),
            ),
          )
        ],
      ),
    );
  }
}
