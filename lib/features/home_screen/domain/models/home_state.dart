import 'package:test_for_max/features/home_screen/domain/models/anime_series.dart';
import 'package:test_for_max/features/home_screen/domain/models/kinopoisk_series.dart';

class HomeState {
  HomeState({
    required this.animeSeriesList,
    required this.kinopoiskSeriesList,
    required this.kinopoiskCategoryList,
  });

  final List<AnimeSeries> animeSeriesList;
  final List<List<KinopoiskSeries>> kinopoiskSeriesList;
  final List<String> kinopoiskCategoryList;
}
