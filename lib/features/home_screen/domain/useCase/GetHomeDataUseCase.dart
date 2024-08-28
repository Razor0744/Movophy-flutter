import 'package:test_for_max/features/home_screen/domain/models/HomeState.dart';
import 'package:test_for_max/features/home_screen/domain/repository/AnilibriaRepository.dart';
import 'package:test_for_max/features/home_screen/domain/repository/KinopoiskRepository.dart';

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
    var animeSeriesList = await anilibriaRepository.getAnimeSeriesList();

    var horrorList = await kinopoiskRepository.getKinopoiskSeriesList(HORRORS_CATEGORY);
    var comedyList = await kinopoiskRepository.getKinopoiskSeriesList(COMEDY_CATEGORY);
    var dramaList = await kinopoiskRepository.getKinopoiskSeriesList(DRAMA_CATEGORY);
    var melodramaList = await kinopoiskRepository.getKinopoiskSeriesList(MELODRAMA_CATEGORY);

    return HomeState(
        animeSeriesList: animeSeriesList,
        kinopoiskSeriesList: [horrorList, comedyList, dramaList, melodramaList],
        kinopoiskCategoryList: [HORRORS, COMEDY, DRAMA, MELODRAMA]);
  }
}
