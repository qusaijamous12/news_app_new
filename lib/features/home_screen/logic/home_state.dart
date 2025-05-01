import '../data/model/banner_model.dart';

abstract class HomeState{}
class InitialHomeState extends HomeState{}
class HomeSuccessState extends HomeState{
  final List<BannerModel> banners;
  HomeSuccessState(this.banners);
}
class HomeErrorState extends HomeState{
  final String errorMsg;
  HomeErrorState(this.errorMsg);
}
class HomeLoadingState extends HomeState{
}