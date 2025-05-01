import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home_screen/data/repository/home_repository.dart';
import '../../features/home_screen/logic/home_cubit.dart';
import '../networking/dio_factory.dart';
import '../networking/web_service.dart';

final getIt=GetIt.instance;

Future<void> setUpGetIt()async{
  final dio=await DioFactory.getDio();

  getIt.registerLazySingleton<WebService>(()=>WebService(dio));
  getIt.registerLazySingleton<HomeRepository>(()=>HomeRepository(getIt<WebService>()));
  getIt.registerFactory<HomeCubit>(()=>HomeCubit(getIt<HomeRepository>()));


}