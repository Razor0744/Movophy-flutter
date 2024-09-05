import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_for_max/common/constants/constants.dart';
import 'package:test_for_max/features/details_screen/domain/models/details_title_model.dart';
import 'package:test_for_max/features/details_screen/domain/repository/title_repository.dart';
import 'package:test_for_max/network/anilibria/service/anilibria_service.dart';
import 'package:test_for_max/network/kinopoisk/service/kinopoisk_service.dart';

class TitleRepositoryImpl implements TitleRepository {
  AnilibriaService anilibriaService;
  KinopoiskService kinopoiskService;

  TitleRepositoryImpl(this.anilibriaService, this.kinopoiskService);

  final kinopoiskApiKey = dotenv.env['KINOPOISK_API_KEY']!;

  @override
  Future<DetailsTitleModel> getTitle(int id, String category) async {
    switch (category) {
      case apiCategoryAnilibria:
        final response = await anilibriaService.getTitle(id: id);

        return DetailsTitleModel(
            imageUrl: '$anilibriaImageStartUrl${response.posters?.small?.url}',
            titleName: response.names?.ru ?? '',
            titleDescription: response.description ?? '');

      case apiCategoryKinopoisk:
        final response = await kinopoiskService.getTitle(id: id, apiKey: kinopoiskApiKey);

        return DetailsTitleModel(
            imageUrl: response.poster?.previewUrl ?? '',
            titleName: response.name ?? '',
            titleDescription: response.description ?? '');

      default:
        return DetailsTitleModel(
            imageUrl: '', titleName: '', titleDescription: '');
    }
  }
}
