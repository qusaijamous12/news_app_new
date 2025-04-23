import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/spacing_manger/spacing_manger.dart';
import '../../../core/theming/color_manger.dart';
import '../../../core/theming/text_style.dart';
import '../../../core/widgets/my_text_button.dart';
import 'widgets/build_animal_view.dart';
import 'widgets/build_category.dart';
import 'widgets/build_row_user_data.dart';
import 'widgets/build_title_with_button.dart';
import 'widgets/tab_bar_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(SpacingManger.kPadding/1.5),
          child: Column(
            children: [
              const BuildRowUserData(),
              verticalSpace(SpacingManger.kPadding),
              const BuildAnimalView(),
              verticalSpace(SpacingManger.kPadding),
              const  Expanded(child:   TabBarController()),
            ],
          ),
        ),
      ),
    );
  }
}
