import 'package:bloc/bloc.dart';

import '../../../core/networking/error_model.dart';
import '../data/model/banner_model.dart';
import '../data/repository/home_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeCubit(this._homeRepository) : super(InitialHomeState());

  List<BannerModel> banners=[];

  void getAllBanners() async {

    emit(HomeLoadingState());

    final result = await _homeRepository.getBanners();

    result.fold((Failure failure) {
      emit(HomeErrorState(failure.message));
    }, (List<BannerModel> banners) {
      banners..clear()..addAll(banners);
      emit(HomeSuccessState(banners));
    });
  }

}
