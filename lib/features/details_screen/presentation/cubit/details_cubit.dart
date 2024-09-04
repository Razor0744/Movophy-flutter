import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/features/details_screen/domain/repository/title_repository.dart';
import 'package:test_for_max/features/details_screen/presentation/cubit/details_ui_state.dart';

class DetailsCubit extends Cubit<DetailsUiState> {
  DetailsCubit(this.apiAnilibriaRepository) : super(Loading());

  TitleRepository apiAnilibriaRepository;

  void getTitle(int id, String category) async {
    final title = await apiAnilibriaRepository.getTitle(id, category);

    emit(Loaded(detailsTitleModel: title));
  }
}
