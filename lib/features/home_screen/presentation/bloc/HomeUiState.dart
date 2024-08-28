import 'package:flutter/cupertino.dart';
import 'package:test_for_max/features/home_screen/domain/models/HomeState.dart';

@immutable
class HomeUiState {}

class Loading extends HomeUiState {}

class Loaded extends HomeUiState {
  Loaded(this.homeState);

  HomeState homeState;
}
