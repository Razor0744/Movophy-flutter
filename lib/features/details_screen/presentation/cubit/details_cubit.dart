import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/features/details_screen/presentation/cubit/details_ui_state.dart';

class DetailsCubit extends Cubit<DetailsUiState> {
  DetailsCubit() : super(Loading());
}
