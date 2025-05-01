import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../features/home_screen/data/model/banner_model.dart';
import 'api_constant.dart';

part 'web_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiUrl)
abstract class WebService{
  factory WebService(Dio dio, {String? baseUrl}) = _WebService;
  
  @GET(ApiConstant.banners)
  Future<List<BannerModel>> getBanners();


}