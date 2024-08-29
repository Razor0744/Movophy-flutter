import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_for_max/features/home_screen/data/repository/anilibria_repository_impl.dart';
import 'package:test_for_max/features/home_screen/data/repository/kinopoisk_repository_impl.dart';
import 'package:test_for_max/features/home_screen/domain/repository/anilibria_repository.dart';
import 'package:test_for_max/features/home_screen/domain/repository/kinopoisk_repository.dart';
import 'package:test_for_max/features/home_screen/domain/useCase/get_home_data_use_case.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/home_cubit.dart';
import 'package:test_for_max/network/anilibria/service/anilibria_service.dart';
import 'package:test_for_max/network/kinopoisk/service/kinopoisk_service.dart';

final getIt = GetIt.instance;

void diSetup(){
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<AnilibriaService>(AnilibriaService(getIt()));
  getIt.registerSingleton<KinopoiskService>(KinopoiskService(getIt()));
  getIt.registerSingleton<AnilibriaRepository>(AnilibriaRepositoryImpl(getIt()));
  getIt.registerSingleton<KinopoiskRepository>(KinopoiskRepositoryImpl(getIt()));
  getIt.registerFactory(() => HomeCubit(getIt()));
  getIt.registerFactory(() => GetHomeDataUseCase(getIt(), getIt()));
}