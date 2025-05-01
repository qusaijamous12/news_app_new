import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home_screen/data/repository/home_repository.dart';
import '../../features/home_screen/logic/home_cubit.dart';
import '../../features/home_screen/presentation/home_screen.dart';
import '../../features/news_details/news_details.dart';
import '../../features/welcome_screen/welcome_screen.dart';
import '../dependancy_injetion/dependancy_injetion.dart';
import '../networking/web_service.dart';
import 'routes.dart';

class AppRouter {
  Route generqateRouter(RouteSettings setting) {
    switch (setting.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create:
                    (_) {
                      return getIt<HomeCubit>()..getAllBanners();
                    },
                child:const HomeScreen(),
              ),
        );
      case Routes.newsDetails:
        return MaterialPageRoute(builder: (_) => const NewsDetails());
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('There is no screen in ${setting.name}'),
                ),
              ),
        );
    }
  }
}
