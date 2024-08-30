import 'package:test_for_max/features/home_screen/domain/models/anime_series.dart';
import 'package:test_for_max/features/home_screen/domain/models/home_state.dart';
import 'package:test_for_max/features/home_screen/domain/models/kinopoisk_series.dart';
import 'package:test_for_max/features/home_screen/domain/repository/anilibria_repository.dart';
import 'package:test_for_max/features/home_screen/domain/repository/kinopoisk_repository.dart';

const String horrors = 'Ужасы';
const String comedy = 'Комедия';
const String drama = 'Драма';
const String melodrama = 'Мелодрама';
const String horrorsCategory = '+ужасы';
const String comedyCategory = 'комедия';
const String dramaCategory = 'драма';
const String melodramaCategory = '!мелодрама';

class GetHomeDataUseCase {
  AnilibriaRepository anilibriaRepository;
  KinopoiskRepository kinopoiskRepository;

  GetHomeDataUseCase(this.anilibriaRepository, this.kinopoiskRepository);

  Future<HomeState> execute() async {
    final animeSeriesListFuture = anilibriaRepository.getAnimeSeriesList();

    final horrorListFuture =
        kinopoiskRepository.getKinopoiskSeriesList(horrorsCategory);
    final comedyListFuture =
        kinopoiskRepository.getKinopoiskSeriesList(comedyCategory);
    final dramaListFuture =
        kinopoiskRepository.getKinopoiskSeriesList(dramaCategory);
    final melodramaListFuture =
        kinopoiskRepository.getKinopoiskSeriesList(melodramaCategory);

    final results = await Future.wait(
      [
        animeSeriesListFuture,
        horrorListFuture,
        comedyListFuture,
        dramaListFuture,
        melodramaListFuture
      ],
    );

    return HomeState(
      animeSeriesList: results[0] as List<AnimeSeries>,
      kinopoiskSeriesList: [
        results[1] as List<KinopoiskSeries>,
        results[2] as List<KinopoiskSeries>,
        results[3] as List<KinopoiskSeries>,
        results[4] as List<KinopoiskSeries>
      ],
      kinopoiskCategoryList: [
        horrors,
        comedy,
        drama,
        melodrama
      ],
    );
  }
}
