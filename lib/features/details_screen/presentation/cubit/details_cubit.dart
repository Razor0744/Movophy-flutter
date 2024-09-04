import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/features/details_screen/domain/repository/api_anilibria_repository.dart';
import 'package:test_for_max/features/details_screen/presentation/cubit/details_ui_state.dart';

class DetailsCubit extends Cubit<DetailsUiState> {
  DetailsCubit(this.apiAnilibriaRepository) : super(Loading());

  ApiAnilibriaRepository apiAnilibriaRepository;

  void getTitle(int id) async {
    final title = await apiAnilibriaRepository.getTitle(id);

    emit(Loaded(detailsTitleModel: title));
  }
}
