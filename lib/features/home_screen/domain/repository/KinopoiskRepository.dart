import 'package:test_for_max/features/home_screen/domain/models/KinopoiskSeries.dart';

abstract class KinopoiskRepository{
  const KinopoiskRepository();

  Future<List<KinopoiskSeries>> getKinopoiskSeriesList(String category);
}