import 'package:flutter/material.dart';
import '../../features/home_screen/presentation/home_screen.dart';
import '../../features/news_details/news_details.dart';
import '../../features/welcome_screen/welcome_screen.dart';
import 'routes.dart';

class AppRouter{

  Route generqateRouter(RouteSettings setting){
    switch(setting.name){
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_)=>const HomeScreen());
      case Routes.newsDetails:
        return MaterialPageRoute(builder: (_)=>const NewsDetails());
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (_)=>const WelcomeScreen());



      default:
        return MaterialPageRoute(builder: (_)=>Scaffold(
          body: Center(
            child: Text(
              'There is no screen in ${setting.name}'
            ),
          ),
        ));

    }

  }

}