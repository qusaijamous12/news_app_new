import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/dependancy_injetion/dependancy_injetion.dart';
import 'core/helper/oberver.dart';
import 'core/router/app_router.dart';
import 'news_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  await setUpGetIt();


  runApp( NewsApp(appRouter: AppRouter(),));
}

