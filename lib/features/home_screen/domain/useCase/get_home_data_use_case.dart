import 'package:test_for_max/features/home_screen/domain/models/home_state.dart';
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
    final animeSeriesList = await anilibriaRepository.getAnimeSeriesList();

    final horrorList = await kinopoiskRepository.getKinopoiskSeriesList(horrorsCategory);
    final comedyList = await kinopoiskRepository.getKinopoiskSeriesList(comedyCategory);
    final dramaList = await kinopoiskRepository.getKinopoiskSeriesList(dramaCategory);
    final melodramaList = await kinopoiskRepository.getKinopoiskSeriesList(melodramaCategory);

    return HomeState(
        animeSeriesList: animeSeriesList,
        kinopoiskSeriesList: [horrorList, comedyList, dramaList, melodramaList],
        kinopoiskCategoryList: [horrors, comedy, drama, melodrama]);
  }
}
