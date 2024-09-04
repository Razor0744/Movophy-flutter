import 'package:test_for_max/features/details_screen/domain/models/details_title_model.dart';

abstract class ApiAnilibriaRepository{

  Future<DetailsTitleModel> getTitle(int id);
}