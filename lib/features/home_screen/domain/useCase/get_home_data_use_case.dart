import 'package:test_for_max/features/home_screen/domain/models/home_state.dart';
import 'package:test_for_max/features/home_screen/domain/repository/anilibria_repository.dart';
import 'package:test_for_max/features/home_screen/domain/repository/kinopoisk_repository.dart';

const String HORRORS = 'Ужасы';
const String COMEDY = 'Комедия';
const String DRAMA = 'Драма';
const String MELODRAMA = 'Мелодрама';
const String HORRORS_CATEGORY = '+ужасы';
const String COMEDY_CATEGORY = 'комедия';
const String DRAMA_CATEGORY = 'драма';
const String MELODRAMA_CATEGORY = '!мелодрама';

class GetHomeDataUseCase {
  AnilibriaRepository anilibriaRepository;
  KinopoiskRepository kinopoiskRepository;

  GetHomeDataUseCase(this.anilibriaRepository, this.kinopoiskRepository);

  Future<HomeState> execute() async {
    final animeSeriesList = await anilibriaRepository.getAnimeSeriesList();

    final horrorList = await kinopoiskRepository.getKinopoiskSeriesList(HORRORS_CATEGORY);
    final comedyList = await kinopoiskRepository.getKinopoiskSeriesList(COMEDY_CATEGORY);
    final dramaList = await kinopoiskRepository.getKinopoiskSeriesList(DRAMA_CATEGORY);
    final melodramaList = await kinopoiskRepository.getKinopoiskSeriesList(MELODRAMA_CATEGORY);

    return HomeState(
        animeSeriesList: animeSeriesList,
        kinopoiskSeriesList: [horrorList, comedyList, dramaList, melodramaList],
        kinopoiskCategoryList: [HORRORS, COMEDY, DRAMA, MELODRAMA]);
  }
}
