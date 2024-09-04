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
  int? id;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null) {
      return;
    }
    if (args is! int) {
      return;
    }
    id = args;
    context.read<DetailsCubit>().getTitle(id ?? 0);
    setState(() {});
    super.didChangeDependencies();
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
