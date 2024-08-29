import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/features/home_screen/domain/useCase/get_home_data_use_case.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/home_ui_state.dart';

class HomeCubit extends Cubit<HomeUiState> {
  HomeCubit(this.getHomeDataUseCase) : super(Loading());

  GetHomeDataUseCase getHomeDataUseCase;

  void getPicturesUrl() async {
    var homeData = await getHomeDataUseCase.execute();

    emit(Loaded(homeData));
  }
}
