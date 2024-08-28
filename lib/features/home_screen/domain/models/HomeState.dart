import 'package:test_for_max/features/home_screen/domain/models/AnimeSeries.dart';
import 'package:test_for_max/features/home_screen/domain/models/KinopoiskSeries.dart';

class HomeState {
  HomeState(
      {required this.animeSeriesList,
      required this.kinopoiskSeriesList,
      required this.kinopoiskCategoryList});

  final List<AnimeSeries> animeSeriesList;
  final List<List<KinopoiskSeries>> kinopoiskSeriesList;
  final List<String> kinopoiskCategoryList;
}
