import 'package:flutter/cupertino.dart';
import 'package:test_for_max/features/home_screen/domain/models/home_state.dart';

@immutable
sealed class HomeUiState {}

class Loading extends HomeUiState {}

class Loaded extends HomeUiState {
  Loaded(this.homeState);

  final HomeState homeState;
}
