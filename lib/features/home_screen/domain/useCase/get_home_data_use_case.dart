import 'package:test_for_max/features/home_screen/domain/models/anime_series.dart';
import 'package:test_for_max/features/home_screen/domain/models/home_state.dart';
import 'package:test_for_max/features/home_screen/domain/models/kinopoisk_series.dart';
import 'package:test_for_max/features/home_screen/domain/repository/anilibria_repository.dart';
import 'package:test_for_max/features/home_screen/domain/repository/kinopoisk_repository.dart';

const String horrorsCategoryApi = '+ужасы';
const String comedyCategoryApi = 'комедия';
const String dramaCategoryApi = 'драма';
const String melodramaCategoryApi = '!мелодрама';

class GetHomeDataUseCase {
  AnilibriaRepository anilibriaRepository;
  KinopoiskRepository kinopoiskRepository;

  GetHomeDataUseCase(this.anilibriaRepository, this.kinopoiskRepository);

  Future<HomeState> execute() async {
    final animeSeriesListFuture = anilibriaRepository.getAnimeSeriesList();

    final horrorListFuture =
        kinopoiskRepository.getKinopoiskSeriesList(horrorsCategoryApi);
    final comedyListFuture =
        kinopoiskRepository.getKinopoiskSeriesList(comedyCategoryApi);
    final dramaListFuture =
        kinopoiskRepository.getKinopoiskSeriesList(dramaCategoryApi);
    final melodramaListFuture =
        kinopoiskRepository.getKinopoiskSeriesList(melodramaCategoryApi);

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
    );
  }
}
