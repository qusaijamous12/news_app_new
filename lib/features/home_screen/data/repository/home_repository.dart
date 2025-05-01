import 'package:either_dart/either.dart';

import '../../../../core/networking/error_model.dart';
import '../../../../core/networking/web_service.dart';
import '../model/banner_model.dart';

class HomeRepository {
  final WebService _webService;

  HomeRepository(this._webService);

  Future<Either<Failure, List<BannerModel>>> getBanners() async {
    try {
      final response = await _webService.getBanners();
      return Right(response);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

}


