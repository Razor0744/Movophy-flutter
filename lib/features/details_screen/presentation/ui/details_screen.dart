import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/common/models/details_arguments_model.dart';
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
  String? category;

  @override
  void didChangeDependencies() {
    final args =
        ModalRoute.of(context)?.settings.arguments as DetailsArgumentsModel;
    id = args.id;
    category = args.category;

    context.read<DetailsCubit>().getTitle(id ?? 0, category ?? '');
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailsCubit, DetailsUiState>(
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
