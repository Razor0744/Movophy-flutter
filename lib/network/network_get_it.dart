import 'package:dio/dio.dart';

import '../di_setup.dart';
import 'anilibria/service/anilibria_service.dart';
import 'kinopoisk/service/kinopoisk_service.dart';

void networkGetIt(){
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<AnilibriaService>(AnilibriaService(getIt()));
  getIt.registerSingleton<KinopoiskService>(KinopoiskService(getIt()));
}