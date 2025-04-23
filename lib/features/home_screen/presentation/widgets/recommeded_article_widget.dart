import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/extenstion.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/spacing_manger/spacing_manger.dart';
import '../../../../core/theming/text_style.dart';

class RecommededArticleWidget extends StatelessWidget {
  const RecommededArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>context.pushNamed(Routes.newsDetails),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: const Color(0xff363636),
          borderRadius: BorderRadiusDirectional.circular(SpacingManger.kPadding),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(SpacingManger.kPadding / 2),
              child: Container(
                height: 135.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(
                    SpacingManger.kPadding,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  'https://media.istockphoto.com/id/1452952557/photo/big-tusker-craig-in-amboseli-kenya-with-a-clouded-sky-in-the-background.jpg?s=612x612&w=0&k=20&c=Hs2YQUox5mIG0NJlyhqNjRklTGvkVmk_UfHs18lYg6E=',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: SpacingManger.kPadding,
                left: SpacingManger.kPadding,
                bottom: SpacingManger.kPadding,
              ),
              child: Column(
                children: [
                  Text(
                    'The 12 most intriguing animal discoveries of 2021',
                    style: getMyBoldTextStyle(
                      textColor: Colors.white,
                      fontSize: FontSize.fs12.sp,
                    ),
                  ),
                  verticalSpace(SpacingManger.kPadding / 1.5),
                  Row(
                    children: [
                      const Icon(Icons.menu, color: Colors.white),
                      horizentalSpace(2),
                      Text(
                        'Read',
                        style: getMyBoldTextStyle(
                          textColor: Colors.white,
                          fontSize: FontSize.fs14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
