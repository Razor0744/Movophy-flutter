import 'package:test_for_max/features/home_screen/domain/models/AnimeSeries.dart';

abstract class AnilibriaRepository {
  const AnilibriaRepository();

  Future<List<AnimeSeries>> getAnimeSeriesList();
}