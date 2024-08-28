import 'package:test_for_max/features/home_screen/domain/models/KinopoiskSeries.dart';
import 'package:test_for_max/features/home_screen/domain/repository/KinopoiskRepository.dart';
import 'package:test_for_max/network/kinopoisk/service/KinopoiskService.dart';

class KinopoiskRepositoryImpl implements KinopoiskRepository {
  KinopoiskService kinopoiskService;

  KinopoiskRepositoryImpl(this.kinopoiskService);

  @override
  Future<List<KinopoiskSeries>> getKinopoiskSeriesList(String category) async {
    var response = await kinopoiskService.getList(category: category);

    var list = response.docs
            ?.where((it) =>
                it.id != null &&
                it.poster != null &&
                it.poster!.previewUrl != null)
            .map((it) => KinopoiskSeries(
                url: it.poster!.previewUrl ?? '', id: it.id ?? 0))
            .toList() ??
        List.empty();
    return list;
  }
}
