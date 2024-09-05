import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:test_for_max/network/kinopoisk/models/kinopoisk_list.dart';
import 'package:test_for_max/network/kinopoisk/models/kinopoisk_title.dart';

part 'kinopoisk_service.g.dart';

@RestApi(baseUrl: "https://api.kinopoisk.dev/v1.4/")
abstract class KinopoiskService {
  factory KinopoiskService(Dio dio, {String baseUrl}) = _KinopoiskService;

  @Headers(<String, dynamic>{'accept': 'application/json'})
  @GET('movie')
  Future<KinopoiskList> getList({
    @Query('page') int page = 1,
    @Query('limit') int limit = 20,
    @Query('selectFields') List<String> selectedFields = const ['id', 'poster'],
    @Query('genres.name') required String category,
    @Header('X-API-KEY') required String apiKey,
  });

  @Headers(<String, dynamic>{'accept': 'application/json'})
  @GET('movie/{id}')
  Future<KinopoiskTitle> getTitle({
    @Path('id') required int id,
    @Header('X-API-KEY') required String apiKey,
  });
}
