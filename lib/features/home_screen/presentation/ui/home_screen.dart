import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/home_ui_state.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/home_cubit.dart';

import 'loaded_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().getPicturesUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeUiState>(
        builder: (context, state) {
          switch (state) {
            case Loading _:
              return const Center(child: CircularProgressIndicator());

            case Loaded _:
              return LoadedState(state: state);
          }
        },
      ),
    );
  }
}
