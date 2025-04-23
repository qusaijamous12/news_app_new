import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/router/app_router.dart';
import 'core/router/routes.dart';

class NewsApp extends StatelessWidget {
  final AppRouter appRouter;
  const NewsApp({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375,812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              useMaterial3: true
          ),
          onGenerateRoute:appRouter.generqateRouter,
          initialRoute: Routes.welcomeScreen,

        );
      },
    );
  }
}
