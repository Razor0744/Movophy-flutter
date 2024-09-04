import 'package:test_for_max/common/constants/constants.dart';
import 'package:test_for_max/features/details_screen/domain/models/details_title_model.dart';
import 'package:test_for_max/features/details_screen/domain/repository/api_anilibria_repository.dart';
import 'package:test_for_max/network/anilibria/service/anilibria_service.dart';

class ApiAnilibriaRepositoryImpl implements ApiAnilibriaRepository {
  AnilibriaService anilibriaService;

  ApiAnilibriaRepositoryImpl(this.anilibriaService);

  @override
  Future<DetailsTitleModel> getTitle(int id) async {
    final response = await anilibriaService.getTitle(id: id);

    return DetailsTitleModel(
        imageUrl:
            '$anilibriaImageStartUrl${response.posters?.small?.url}',
        titleName: response.names?.ru ?? '',
        titleDescription: response.description ?? '');
  }
}
