import 'package:test_for_max/features/details_screen/domain/models/details_title_model.dart';

abstract class TitleRepository {
  Future<DetailsTitleModel> getTitle(int id, String category);
}
