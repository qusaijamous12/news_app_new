import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/spacing_manger/spacing_manger.dart';
import '../../../../core/theming/color_manger.dart';
import '../../../../core/theming/text_style.dart';
import 'build_title_with_button.dart';
import 'builf_tab_one_controller.dart';
import 'recommeded_article_widget.dart';
import 'recommened_title_widget.dart';

class TabBarController extends StatefulWidget {
  const TabBarController({super.key});

  @override
  State<TabBarController> createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _tabs=const [
    Tab(text: 'Science'),
    Tab(text: 'Environment'),
    Tab(text: 'Animals'),
    Tab(text: 'Travel'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Column(
    
      children: [
        TabBar(
          controller: _tabController,
          labelColor: ColorManger.kYellow,
          unselectedLabelColor: Colors.white,
          indicatorColor: ColorManger.kYellow,
          tabs: _tabs,

        ),
        verticalSpace(SpacingManger.kPadding/2),
        Expanded(
          child: TabBarView(
          
            controller: _tabController,
            children:  [
            const  BuildTabOneController(),
              Text('as'),
              Text('as'),
              Text('as'),

            ],
          ),
        )
      ],
    );
  }



}
