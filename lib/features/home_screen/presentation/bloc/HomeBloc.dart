import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/features/home_screen/domain/useCase/GetHomeDataUseCase.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/HomeUiState.dart';

class HomeBloc extends Cubit<HomeUiState> {
  HomeBloc(this.getHomeDataUseCase) : super(Loading());

  GetHomeDataUseCase getHomeDataUseCase;

  void getPicturesUrl() async {
    var homeData = await getHomeDataUseCase.execute();
    emit(Loaded(homeData));
  }
}
