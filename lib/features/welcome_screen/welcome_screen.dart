import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/helper/extenstion.dart';
import '../../core/router/routes.dart';
import '../../core/spacing_manger/spacing_manger.dart';
import '../../core/theming/color_manger.dart';
import '../../core/theming/text_style.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _pageController=PageController();
  int _lastPage=0;
  final _images=[
    'https://images.pexels.com/photos/788200/pexels-photo-788200.jpeg',
    'https://images.unsplash.com/photo-1541959833400-049d37f98ccd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.pexels.com/photos/931007/pexels-photo-931007.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];


  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: _pageController,
        // physics:const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => buildPageViewWidget(_images[index]),
        itemCount: _images.length,
        onPageChanged: (index){
          print('index is $index');

          setState(() {
            _lastPage=index;
          });
        },
      ),
    );
  }

  Widget buildPageViewWidget(String images)=>Stack(
    children: [
      Image.network(
        images,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Align(
        alignment: AlignmentDirectional.bottomEnd,
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: SpacingManger.kPadding,
          ),
          height: MediaQuery.sizeOf(context).height / 3,
          width: double.infinity,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(1),
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.3),
                Colors.transparent,
              ],
              stops: [
                0,
                0.6,
                1,
                1,
              ], // Adjust where each color appears
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover nature\nand explore beyond',
                style: getMyBoldTextStyle(
                  textColor: Colors.white,
                  fontSize: FontSize.fs18 * 1.5.sp,
                ),
              ),
              verticalSpace(SpacingManger.kPadding / 2),
              Text(
                'find with us your dream house\nquickly and precisely',
                style: getMyRegularTextStyle(
                  textColor: Colors.white,
                  fontSize: FontSize.fs16.sp,
                ),
              ),
              const Spacer(),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(SpacingManger.kPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count:  3,
                        axisDirection: Axis.horizontal,
                        effect: const SlideEffect(
                            spacing:  8.0,
                            radius:  10.0,
                            dotWidth:  15.0,
                            dotHeight:  16.0,
                            paintStyle:  PaintingStyle.fill,
                            strokeWidth:  1.5,
                            dotColor: Color(0xff4F4F4F) ,
                            activeDotColor:  ColorManger.kYellow
                        ),
                      ),
                      if(_lastPage==2)
                      GestureDetector(
                        onTap: (){
                          context.pushNamedAndRemoveUntil(Routes.homeScreen, predicate: (c)=>false);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadiusDirectional.circular(
                              SpacingManger.kPadding / 2,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                const  Color(
                                  0xff2F2F2E,
                                ).withValues(alpha: 0.9),
                                const  Color(
                                  0xff2F2F2E,
                                ).withValues(alpha: 0.9),
                                Colors.black.withValues(alpha: 0.1),
                              ],
                            ),
                          ),
                          padding: const EdgeInsetsDirectional.symmetric(horizontal: SpacingManger.kPadding / 2, vertical: SpacingManger.kPadding / 1.6,),
                          child: Row(
                            children: [
                              Text(
                                'Get Started',
                                style: getMyBoldTextStyle(
                                  textColor: Colors.white,
                                  fontSize: FontSize.fs16.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),

                              horizentalSpace(SpacingManger.kPadding),
                              Container(
                                height: 37.h,
                                width: 37.w,
                                decoration: BoxDecoration(
                                  color: ColorManger.kYellow,
                                  borderRadius:
                                  BorderRadiusDirectional.circular(
                                    SpacingManger.kPadding / 2,
                                  ),
                                ),
                                child:const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
