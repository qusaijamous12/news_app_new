import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/extenstion.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/spacing_manger/spacing_manger.dart';
import '../../../../core/theming/color_manger.dart';
import '../../../../core/theming/text_style.dart';

class RecommenedTitleWidget extends StatelessWidget {
  const RecommenedTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>context.pushNamed(Routes.newsDetails),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManger.kGreyDark,
          borderRadius: BorderRadiusDirectional.circular(
            SpacingManger.kPadding / 2,
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(
                    SpacingManger.kPadding / 2,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxuvLdD0LJLsqyDSLWpl6VWNbB7e0TxzeTkQ&s',
                ),
              ),
            ),
            horizentalSpace(SpacingManger.kPadding),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'More animal species are getting COVID-19 for the first time',
                    style: getMyBoldTextStyle(textColor: Colors.white),
                  ),
                  verticalSpace(SpacingManger.kPadding / 2),
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
