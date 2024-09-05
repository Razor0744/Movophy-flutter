import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_for_max/features/home_screen/domain/models/kinopoisk_series.dart';
import 'package:test_for_max/features/home_screen/domain/repository/kinopoisk_repository.dart';
import 'package:test_for_max/network/kinopoisk/service/kinopoisk_service.dart';

class KinopoiskRepositoryImpl implements KinopoiskRepository {
  KinopoiskService kinopoiskService;

  KinopoiskRepositoryImpl(this.kinopoiskService);

  final kinopoiskApiKey = dotenv.env['KINOPOISK_API_KEY']!;

  @override
  Future<List<KinopoiskSeries>> getKinopoiskSeriesList(String category) async {
    final response = await kinopoiskService.getList(
        category: category, apiKey: kinopoiskApiKey);

    final list = response.docs
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
