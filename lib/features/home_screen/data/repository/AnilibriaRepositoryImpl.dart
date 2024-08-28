import 'package:test_for_max/features/home_screen/domain/models/AnimeSeries.dart';
import 'package:test_for_max/network/anilibria/service/AnilibriaService.dart';

import '../../domain/repository/AnilibriaRepository.dart';

class AnilibriaRepositoryImpl implements AnilibriaRepository {
  AnilibriaService anilibriaService;

  AnilibriaRepositoryImpl(this.anilibriaService);

  @override
  Future<List<AnimeSeries>> getAnimeSeriesList() async {
    var response = await anilibriaService.getSchedule();

    var list = response
        .map((it) => AnimeSeries(
            id: it.list?[0].id ?? 0,
            pictureUrl: 'https://www.anilibria.tv${it.list?[0].posters?.small?.url}'))
        .toList();
    return list;
  }
}
