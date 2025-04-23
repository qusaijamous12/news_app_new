import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/spacing_manger/spacing_manger.dart';
import 'build_title_with_button.dart';
import 'recommeded_article_widget.dart';
import 'recommened_title_widget.dart';

class BuildTabOneController extends StatelessWidget {
  const BuildTabOneController({super.key});

  @override
  Widget build(BuildContext context) {
    return       SingleChildScrollView(
      child: Column(
        children: [
          BuildTitleWithButton(title: 'Recommended Article', onTap: (){}),
          verticalSpace(SpacingManger.kPadding / 1.5),
          SizedBox(
            height: 250.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>const RecommededArticleWidget(),
              separatorBuilder:
                  (context, index) =>
                  horizentalSpace(SpacingManger.kPadding / 2),
              itemCount: 5,
            ),
          ),
          verticalSpace(SpacingManger.kPadding / 1.5),
          BuildTitleWithButton(title: 'Recommended Titles', onTap: (){}),
          ListView.separated(
            shrinkWrap: true,
            physics:const NeverScrollableScrollPhysics(),
            itemBuilder: (context,index)=>const RecommenedTitleWidget(),
            separatorBuilder: (context,index)=>verticalSpace(SpacingManger.kPadding/2),
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
