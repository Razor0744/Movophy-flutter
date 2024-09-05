import '../../../di_setup.dart';
import '../data/repository/anilibria_repository_impl.dart';
import '../data/repository/kinopoisk_repository_impl.dart';
import '../domain/repository/anilibria_repository.dart';
import '../domain/repository/kinopoisk_repository.dart';
import '../domain/useCase/get_home_data_use_case.dart';
import '../presentation/bloc/home_cubit.dart';

void homeGetIt(){
  getIt.registerSingleton<AnilibriaRepository>(AnilibriaRepositoryImpl(getIt()));
  getIt.registerSingleton<KinopoiskRepository>(KinopoiskRepositoryImpl(getIt()));
  getIt.registerFactory(() => HomeCubit(getIt()));
  getIt.registerFactory(() => GetHomeDataUseCase(getIt(), getIt()));
}