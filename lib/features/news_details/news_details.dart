import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helper/extenstion.dart';
import '../../core/spacing_manger/spacing_manger.dart';
import '../../core/theming/color_manger.dart';
import '../../core/theming/text_style.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Image.network(
                'https://media.istockphoto.com/id/846147812/photo/rainbow-lorikeet.jpg?s=2048x2048&w=is&k=20&c=2z4s7uFt8jzasv00-TKsGNpslxB04UQZgBvMYcR8WY4=',
                height: MediaQuery.sizeOf(context).height / 1.9,
                width: double.infinity,
                fit: BoxFit.cover,

              ),
              GestureDetector(
                onTap: (){
                  print('yes yes !!');
                  context.pop();
                },
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60,left: 20),
                  child: CircleAvatar(
                    radius: 20,
                      backgroundColor: Colors.black,
                      child: Container(
                          margin:const EdgeInsetsDirectional.only(start: 8),
                          child:const  Icon(Icons.arrow_back_ios,color: Colors.white,))),
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.sizeOf(context).height / 1.9,
            padding:const EdgeInsetsDirectional.all(SpacingManger.kPadding),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topEnd,
                colors: [
                  Colors.grey.withValues(alpha: 0.2),
                  Colors.black.withValues(alpha: 0.5),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bird In Jungle',
                  style: getMyBoldTextStyle(textColor: Colors.white,fontSize: FontSize.fs20.sp),
                ),
                verticalSpace(SpacingManger.kPadding/2),
                Row(
                  spacing: SpacingManger.kPadding/4,
                  children: [
                    Text(
                      'By',
                      style: getMyMediumTextStyle(textColor: Colors.white,fontSize: FontSize.fs14.sp),
                    ),
                    Text(
                      'Qusai Jamous',
                      style: getMyMediumTextStyle(textColor: Colors.yellow,fontSize: FontSize.fs14.sp),
                    )
                  ],
                ),
                verticalSpace(SpacingManger.kPadding/2),
                const  Divider(
                  color: ColorManger.kGrey,
                  height: 2,
                ),
                verticalSpace(SpacingManger.kPadding/2),
                Text(
                  'Publised May 13, 2020 ',
                  style: getMyMediumTextStyle(textColor: Colors.white,fontSize: FontSize.fs14.sp),


                ),
                verticalSpace(SpacingManger.kPadding),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              padding: const EdgeInsetsDirectional.all(SpacingManger.kPadding),
              height: MediaQuery.sizeOf(context).height / 2.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(SpacingManger.kPadding ),
                  topEnd: Radius.circular(SpacingManger.kPadding),
                ),
              ),
              child: Column(
                spacing: SpacingManger.kPadding / 2,
                children: [
                  Text(
                    'Most of us likely consider snakes to be cold, solitary beings, as indifferent to others of their kind as they are to us.',
                    style: getMyMediumTextStyle(
                      textColor: Colors.white,
                      fontSize: FontSize.fs14.sp,
                    ),
                  ),
                  Text(
                    'Most of us likely consider snakes to be cold, solitary beings, as indifferent to others of their kind as they are to us.But those notions are wrong—especially when it comes to garter snakes, a new study says.snakes they hang out with—in other words, they have “friends.”',
                    style: getMyMediumTextStyle(
                      textColor: Colors.white,
                      fontSize: FontSize.fs14.sp,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
