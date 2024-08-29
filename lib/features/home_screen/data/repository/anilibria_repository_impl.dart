import 'package:test_for_max/features/home_screen/domain/models/anime_series.dart';
import 'package:test_for_max/network/anilibria/service/anilibria_service.dart';

import '../../domain/repository/anilibria_repository.dart';

class AnilibriaRepositoryImpl implements AnilibriaRepository {
  AnilibriaService anilibriaService;

  AnilibriaRepositoryImpl(this.anilibriaService);

  @override
  Future<List<AnimeSeries>> getAnimeSeriesList() async {
    final response = await anilibriaService.getSchedule();

    final list = response
        .map((it) => AnimeSeries(
            id: it.list?[0].id ?? 0,
            pictureUrl: 'https://www.anilibria.tv${it.list?[0].posters?.small?.url}'))
        .toList();
    return list;
  }
}
