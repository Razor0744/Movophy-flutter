import 'package:test_for_max/features/details_screen/domain/models/details_title_model.dart';

sealed class DetailsUiState{}

class Loading extends DetailsUiState{}

class Loaded extends DetailsUiState{
  Loaded({required this.detailsTitleModel});

  final DetailsTitleModel detailsTitleModel;
}