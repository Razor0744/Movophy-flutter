import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_for_max/features/home_screen/data/repository/AnilibriaRepositoryImpl.dart';
import 'package:test_for_max/features/home_screen/data/repository/KinopoiskRepositoryImpl.dart';
import 'package:test_for_max/features/home_screen/domain/repository/AnilibriaRepository.dart';
import 'package:test_for_max/features/home_screen/domain/repository/KinopoiskRepository.dart';
import 'package:test_for_max/features/home_screen/domain/useCase/GetHomeDataUseCase.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/HomeBloc.dart';
import 'package:test_for_max/network/anilibria/service/AnilibriaService.dart';
import 'package:test_for_max/network/kinopoisk/service/KinopoiskService.dart';

final getIt = GetIt.instance;

void DISetup(){
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<AnilibriaService>(AnilibriaService(getIt()));
  getIt.registerSingleton<KinopoiskService>(KinopoiskService(getIt()));
  getIt.registerSingleton<AnilibriaRepository>(AnilibriaRepositoryImpl(getIt()));
  getIt.registerSingleton<KinopoiskRepository>(KinopoiskRepositoryImpl(getIt()));
  getIt.registerFactory(() => HomeBloc(getIt()));
  getIt.registerFactory(() => GetHomeDataUseCase(getIt(), getIt()));
}