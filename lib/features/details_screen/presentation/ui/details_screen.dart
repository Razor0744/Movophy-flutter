import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/features/details_screen/presentation/cubit/details_cubit.dart';
import 'package:test_for_max/features/details_screen/presentation/cubit/details_ui_state.dart';
import 'package:test_for_max/features/details_screen/presentation/ui/loaded_state.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return DetailsScreenState();
  }
}

class DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailsCubit, DetailsUiState>(
        builder: (context, state) {
          if (state is Loaded) {
            return LoadedState(state: state);
          } else {
            return const Text('error');
          }
        },
      ),
    );
  }
}
